#!/bin/bash

INSTALL_DIR="$HOME/.aczg_scripts"
mkdir -p "$INSTALL_DIR"
cp scripts/*.sh "$INSTALL_DIR/"
chmod +x "$INSTALL_DIR"/*.sh

SHELL_RC="$HOME/.bashrc"
[ -f "$HOME/.zshrc" ] && SHELL_RC="$HOME/.zshrc"

# Limpa configurações antigas para evitar duplicidade
sed -i '/ACZG_START/,/ACZG_END/d' "$SHELL_RC"

# Adiciona os Aliases
cat <<EOF >> "$SHELL_RC"
# ACZG_START
alias aczgnew='$INSTALL_DIR/init_project.sh'
alias aczginit='$INSTALL_DIR/git_manage.sh init'
alias aczgfinish='$INSTALL_DIR/git_manage.sh finish'
alias aczglogs='$INSTALL_DIR/show_logs.sh'
alias aczgci='$INSTALL_DIR/ci_pipeline.sh'
# ACZG_END
EOF

echo "✨ Tudo configurado! Reinicie o terminal ou use: source $SHELL_RC"