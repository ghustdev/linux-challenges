#!/bin/bash
COMMAND=$1
FEATURE_NAME=$2

case $COMMAND in
    init)
        git status
        git checkout -b "feat-$FEATURE_NAME"
        git branch -a
        ;;
    finish)
        CURRENT=$(git branch --show-current)
        git checkout master
        git merge "$CURRENT"
        git branch -d "$CURRENT"
        git push origin --delete "$CURRENT" 2>/dev/null
        echo "✅ Branch $CURRENT finalizada e mergeada."
        ;;
esac