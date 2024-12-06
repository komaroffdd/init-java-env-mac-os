# Установка окружения через скрипт на `Mac Os` 

Маленькая полезная тулза для установки Java окружения на новый Mac Os на котором ничего не стоит 


Для запуска того что бы запустить скрипт нужно сделать 

1. Скачать репозиторий
  1. `git clone git@github.com:komaroffdd/init-java-env-mac-os.git`
2. Дать права на выполнение скриптов
  1. `chmod +x init-java-env-mac-os/init-env.sh`
3. Запустить
  1. `./init-java-env-mac-os/init-env.sh`

Под капотом используются https://brew.sh/ который тоже предварительно скачивается 
После запуска 
1. Установится `brew` 
2. Скачается и установится приложения для работы Java разработчика
  1. Установка производится черещ brew install <app_name>
3. Генерация ssh ключа в интерактивном режиме для последующего добавления в github