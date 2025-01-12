#!/bin/bash

# Função para conectar à rede
conectar_rede() {
    local network=$1
    local senha=$2

    if [ -n "$senha" ]; then
        nmcli dev wifi connect "$network" password "$senha"
    else
        nmcli con up "$network"
    fi

    return $?
}

# Obtém a lista de SSIDs disponíveis
network_list=$(nmcli -t -f SSID dev wifi list)

# Verifica se a lista de redes foi obtida com sucesso
if [ $? -ne 0 ]; then
    notify-send "Erro" "Erro ao obter a lista de redes Wi-Fi."
    exit 1
fi

# Usa rofi para exibir a lista e capturar a seleção
selected_network=$(echo "$network_list" | wofi -d -p"Connect Wi-Fi")

# Verifica se uma rede foi selecionada
if [ -n "$selected_network" ]; then
    # Verifica se a rede já está configurada
    existing_connection=$(nmcli connection show | grep -w "$selected_network")

    if [ $? -ne 0 ]; then
        notify-send "Erro" "Erro ao verificar as conexões existentes."
        exit 1
    fi

    if [ -z "$existing_connection" ]; then
        # Se a rede não estiver configurada, solicita a senha
        password=$(wofi -d  "Senha:" -password)
        if [ -n "$password" ]; then
            conectar_rede "$selected_network" "$password"
            if [ $? -ne 0 ]; then
                notify-send "Erro" "Erro ao tentar conectar à rede $selected_network."
                exit 1
            else
                notify-send "Sucesso" "Conectado com sucesso à rede $selected_network."
            fi
        else
            notify-send "Erro" "Nenhuma senha fornecida."
            exit 1
        fi
    else
        # Tenta conectar usando a configuração existente
        conectar_rede "$selected_network"
        if [ $? -ne 0 ]; then
            # Se falhar, tenta reconectar solicitando uma nova senha
            notify-send "Erro" "Falha na conexão. A senha pode estar incorreta. Por favor, insira uma nova senha."
            password=$(wofi -d -p"Nova senha:" -P)
            if [ -n "$password" ]; then
                nmcli connection delete "$selected_network"  # Remove a configuração antiga
                conectar_rede "$selected_network" "$password"
                if [ $? -ne 0 ]; then
                    notify-send "Erro" "Erro ao tentar conectar à rede $selected_network com a nova senha."
                    exit 1
                else
                    notify-send "Sucesso" "Conectado com sucesso à rede $selected_network."
                fi
            else
                notify-send "Erro" "Nenhuma nova senha fornecida."
                exit 1
            fi
        else
            notify-send "Sucesso" "Conectado com sucesso à rede $selected_network."
        fi
    fi
else
    #notify-send "Erro" "Nenhuma rede selecionada."
    exit 1
fi
