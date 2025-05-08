# Final Project

## 📌 Описание

Этот проект представляет собой веб-сайт, развернутый в Docker-контейнере с использованием Nginx. Он демонстрирует навыки работы с Docker, настройку прав, CI/CD и взаимодействие нескольких контейнеров через `docker-compose`.

---

## ✅ Выполнение требований 

1. **Сборка проекта в Docker:**
   - Используется `Dockerfile` на базе `nginx:alpine`.
   - Веб-сайт копируется в контейнер и доступен по порту **8080**.

2. **Права доступа:**
   - В Dockerfile настроены команды `chmod` и `chown` для безопасного доступа к файлам сайта.

3. **CI/CD:**
   - Файл `.github/workflows/ci.yml` выполняет автоматическую сборку и проверку при каждом `push` в ветку `main`.

4. **Несколько контейнеров с взаимодействием:**
   - `docker-compose.yml` содержит два сервиса:
     - `web` — основной сайт;
     - `whoami` — сервис на основе образа `traefik/whoami`, отображающий информацию о запросе (IP, заголовки и т.п.).

5. **Дополнительная тема:**
   - В проект добавлен **HEALTHCHECK**, позволяющий Docker автоматически отслеживать состояние контейнеров.
   - После запуска `docker ps` можно увидеть статус `healthy` или `unhealthy` для `web` и `whoami`, что полезно для мониторинга и отладки.

---

## 🚀 Как запустить

1. Клонируйте репозиторий:

```bash
git clone (https://github.com/sherkhan008/DevOps)
cd Project

2. Запустите Docker Compose:

docker-compose up -d

3. Перейдите по адресу:

    http://localhost:8080 — основной сайт

    http://localhost:8081 — контейнер whoami


📁 Структура проекта

Project/
├── Dockerfile
├── docker-compose.yml
├── website/
│   └── index.html
│   └── favicon.svg
│   └── readme-images
│   └── assets
├── nginx/
│   └── default.conf
├── .github/
│   └── workflows/
│       └── ci.yml
