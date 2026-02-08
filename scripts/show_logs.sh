#!/bin/bash
LOG_FILE="$HOME/.aczg_logs.log"
if [ -f "$LOG_FILE" ]; then
    echo "--- Últimos logs do Pipeline ACZG ---"
    tail -n 20 "$LOG_FILE"
else
    echo "Nenhum log gerado ainda."
fi