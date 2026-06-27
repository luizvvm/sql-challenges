#!/bin/bash

set -e

FILES=$(git ls-files --others --modified --exclude-standard)

if [ -z "$FILES" ]; then
  echo "Nenhum arquivo novo ou modificado para commitar."
  exit 0
fi

echo "Arquivos encontrados:"
echo "$FILES"
echo

for FILE in $FILES; do
  BASENAME=$(basename "$FILE")
  EXTENSION="${BASENAME##*.}"

  PROBLEM_ID=$(echo "$BASENAME" | grep -oE '^[0-9]+' || true)

  if [ -z "$PROBLEM_ID" ]; then
    MESSAGE="solve: add beecrowd solution in $EXTENSION"
  else
    MESSAGE="solve: add beecrowd $PROBLEM_ID in $EXTENSION"
  fi

  echo "Commitando: $FILE"
  echo "Mensagem: $MESSAGE"
  echo

  git add "$FILE"
  git commit -m "$MESSAGE"
done

echo
echo "Todos os arquivos foram commitados."
echo "Agora rode: git push"