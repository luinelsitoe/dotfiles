#!/bin/bash
awk '
BEGIN {
    total_kb = 0
    total_gb = 0
    total_gb = 0
}
{
    total_kb += $0
}
END {
    total_mb = total_kb / 1024
    total_gb = total_mb / 1024
    
    if (total_kb < 1024) {
        printf "%.1f KB", total_kb 
    } else if (total_mb < 1024) {
        printf "%.1f MB", total_mb 
    } else {
        printf "%.1f GB", total_gb
    }
}
' ~/.config/scripts/total_data.txt
