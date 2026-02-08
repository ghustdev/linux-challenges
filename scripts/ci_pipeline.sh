#!/bin/bash
INTERVAL=${1:-"*/30 * * * *"} # Default: 30 min
PROJECT_DIR=${2:-$(pwd)}
LOG_FILE="$HOME/.aczg_logs.log"
RUNNER="$HOME/.aczg_scripts/java_runner.sh"

# Criando o executor que o Cron chamará
cat <<EOF > "$RUNNER"
#!/bin/bash
export DISPLAY=:0
export DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/\$(id -u)/bus

cd "$PROJECT_DIR"
echo "[ \$(date) ] Iniciando CI para Java..." >> "$LOG_FILE"

# Busca todos os arquivos .java e tenta compilar
find . -name "*.java" > sources.txt
if javac @sources.txt >> "$LOG_FILE" 2>&1; then
    # Procura a classe com o método main (simplificado)
    MAIN_CLASS=\$(grep -l "public static void main" *.java | sed 's/\.java//')
    if java "\$MAIN_CLASS" >> "$LOG_FILE" 2>&1; then
        echo "[ \$(date) ] SUCCESS: Execução Java OK" >> "$LOG_FILE"
        notify-send "ACZG CI" "✅ Sucesso! Projeto compilado e rodado."
        git add . && git commit -m "auto-commit: CI success"
    else
        echo "[ \$(date) ] ERROR: Falha na execução" >> "$LOG_FILE"
        notify-send "ACZG CI" "❌ Erro na execução do código Java." -u critical
    fi
else
    echo "[ \$(date) ] ERROR: Falha na compilação" >> "$LOG_FILE"
    notify-send "ACZG CI" "⚠️ Erro de compilação Java." -u critical
fi
rm sources.txt
EOF

chmod +x "$RUNNER"
(crontab -l 2>/dev/null | grep -v "$RUNNER"; echo "$INTERVAL $RUNNER") | crontab -
echo "✅ Cron configurada: $INTERVAL"