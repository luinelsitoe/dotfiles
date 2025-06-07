if status is-interactive
  # ~/.config/fish/config.fish

  # 1. Zoxide (para Fish)
  # em vez de eval "$(zoxide init zsh)", use:
  zoxide init fish | source

  # 2. Aliases / funções
  function rm
    trash $argv
  end

  alias cd='z'
  alias ls='eza'
  alias vi='nvim'

  function vic
    cd ~/.config/nvim/
    nvim .
  end

  function help
    if test (count $argv) -eq 0
      echo "Uso: help <comando>"
      return 1
    end
    $argv --help 2>&1 | bat --paging=always --language=help
  end

  alias xo='xdg-open'
  alias nnn='$HOME/nnn/nnn'

  # 4. SDKMAN (pode não funcionar totalmente no Fish—teste e ajuste se necessário)
  # Se sdkman-init.sh for um script POSIX, você pode tentar:
  # source $HOME/.sdkman/bin/sdkman-init.sh

  # 5. EDITOR
  set -gx EDITOR nvim

  # 6. Coursier
  set -gx PATH $PATH $HOME/.local/share/coursier/bin

  # 7. GHCup / Cabal
  if not set -q GHCUP_INSTALL_BASE_PREFIX
    set -gx GHCUP_INSTALL_BASE_PREFIX $HOME
  end
  set -gx PATH $HOME/.cabal/bin $HOME/.ghcup/bin $PATH

  # 8. Go e .NET tools
  set -gx PATH $PATH $HOME/go/bin
  set -gx PATH $PATH $HOME/.dotnet/tools

  # 9. OPAM (se quiser usar; adapte para Fish)
  if test -r $HOME/.opam/opam-init/init.fish
    source $HOME/.opam/opam-init/init.fish
  end
end
