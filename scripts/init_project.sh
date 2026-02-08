#!/bin/bash
TARGET_PATH=$1
PROJECT_NAME=$2

if [ -z "$TARGET_PATH" ] || [ -z "$PROJECT_NAME" ]; then
    echo "Erro: Use aczgnew [caminho] [nome]"
    exit 1
fi

FULL_PATH="$TARGET_PATH/$PROJECT_NAME"
mkdir -p "$FULL_PATH"
cd "$FULL_PATH" || exit

echo "projeto $PROJECT_NAME inicializado...." > README.md
git init
git add README.md
git commit -m "first commit - repositório configurado"
echo "✅ Projeto $PROJECT_NAME criado em $FULL_PATH"