current_username=$(id -un)
echo "Текущий пользователь $current_username"
git config --global user.name "$current_username"

current_email=$((current_username + '@email.ru'))
echo "Текущий emil $current_email"
git config --global user.email "$current_email"

echo 'Генерируем ключ в интерактивном режиме для github.com '
ssh-keygen -t rsa
echo 'Ключ сгенерирован ---> '
echo
cat ~/.ssh/id_rsa.pub
echo 'Что бы добавить ключ перейдите по https://github.com/settings/ssh/new '
