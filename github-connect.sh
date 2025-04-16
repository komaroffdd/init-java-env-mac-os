#!/bin/bash

domain="${1:-email.ru}"

current_username=$(id -un)
echo "Текущий пользователь: $current_username"

git config --global user.name "$current_username"

current_email="${current_username}@${domain}"
echo "Текущий email: $current_email"

git config --global user.email "$current_email"

echo "Генерируем ключ в интерактивном режиме для github.com"
ssh-keygen -t rsa

echo "Ключ сгенерирован --->"
echo
cat ~/.ssh/id_rsa.pub

urls=(
  "https://github.com/settings/ssh/new"
  "https://gitlab.com/-/user_settings/ssh_keys"
  ""
)

echo "Чтобы добавить ключ, перейдите по одной из ссылок:"
for url in "${urls[@]}"; do
  echo "$url"
done
