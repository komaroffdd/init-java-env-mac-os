echo 'Проверяем, установлен ли Homebrew'
if ! command -v brew &> /dev/null
then
    echo 'Устанавливаем Homebrew'
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo 'Homebrew уже установлен'
fi

input="applications"
while IFS= read -r app
do
    echo "brew install $app"
    brew install "$app"
done < "$input"
