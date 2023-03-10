# Лабораторная работа. Docker
## Инструкция по запуску
- На устройстве должны быть установлены: Docker, Python, модуль pip
- Запустить следущие команды
```bash
git clone https://github.com/sgwps/docker-test
cd docker-test
bash start.sh
```

- JupiterHub будет доступен по адресу http://localhost:80
- Данные для первого входа: логин - admin, пароль - admin
## Структура лабораторной работы
- В файле start.sh описаны команды, обеспечивавющие сборку и запуск контейнера jupyter (docker build). 
- В файле Dockerfile описаны команды для сборки контейнера
- В файле entypoint.sh описаны команды для копирования необходимых директорий и запуска
## При сборке предусмотрены:
- Импортирование образа с DockerHub
- Установка необходимых зависимостей
- Закрепление аргументов NOTEBOOKS_FROM, HUB_PATH
- Создание пользователя admin
- Закрепление каталога VOLUME для постоянного хранения
- Копирование в контейнер и запуск entrypoint.sh
## Описание entrypoint.sh
- Копирование каталога NOTEBOOKS_FROM в HUB_PATH или создание каталога NOTEBOOKS_FROM в HUB_PATH (если NOTEBOOKS_FROM отсуствует)
- Запуск jupyterhub
