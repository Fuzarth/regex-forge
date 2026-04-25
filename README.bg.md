# Regex Forge

Малък локален инструмент за подготвяне на преименувания с регулярни изрази.

Френска версия: [README.md](README.md)

## Подкрепа за проекта

[![Остави бакшиш с PayPal](https://pics.paypal.com/00/s/NTQzYmJmNmItNTk4OS00NGQ3LTliMmQtNmY4ZTlkYjAxZTlj/file.PNG)](https://www.paypal.com/donate?business=G2ZMVZLXK8SYC&no_recurring=0&item_name=%D0%9D%D1%8F%D0%BC%D0%B0%20%D0%B4%D0%B0%20%D0%BC%D0%BE%D0%B3%D0%B0%20%D0%B4%D0%B0%20%D0%BA%D0%BE%D0%BD%D1%82%D1%80%D0%BE%D0%BB%D0%B8%D1%80%D0%B0%D0%BC%20%D1%81%D0%B2%D0%B5%D1%82%D0%B0%20%D1%81%D0%B0%D0%BC%2C%20%D0%BD%D0%BE%20%D1%89%D0%B5%20%D0%B2%D0%B8%20%D0%BF%D0%BE%D0%BC%D0%BD%D1%8F%2C%20%D0%BA%D0%BE%D0%B3%D0%B0%D1%82%D0%BE%20%D1%83%D1%81%D0%BF%D0%B5%D1%8F%20%E2%98%BA%EF%B8%8F&currency_code=EUR)

## Стартиране без Docker

Отвори директно файла:

```text
app/index.html
```

## Стартиране с Docker Compose

От папката на проекта:

```powershell
docker compose up -d
```

След това отвори:

```text
http://localhost:8109
```

За спиране:

```powershell
docker compose down
```

## Инсталация с Portainer

В Portainer:

1. Отиди в `Stacks`.
2. Щракни върху `Add stack`.
3. Постави съдържанието на `docker-compose.portainer.yml` в Web editor.
4. Деплойни stack-а.
5. Отвори адреса на твоя сървър на порт `8109`.

Пример:

```text
http://IP_НА_СЪРВЪРА:8109
```

Файлът `docker-compose.portainer.yml` изгражда image-а директно от официалното GitHub хранилище:

```text
https://github.com/Fuzarth/regex-forge.git
```

## Функции

- визуален тест на regex върху списък с файлове;
- поле за замяна с групи `$1`, `$2` и т.н.;
- преглед `старо -> ново` ред по ред;
- предупреждения за дубликати, празни имена и непроменени имена;
- копиране само на реално променените имена;
- текстов export само на реално променените имена;
- опция за главни първи букви на думите в новите имена;
- локално запазване на сценарии и персонализирани блокове за замяна;
- изтриване на персонализирани или стандартни блокове от интерфейса;
- reset на блоковете и сценариите към базовата конфигурация;
- интерфейс на френски или български, като изборът се запазва в браузъра.

## Docker файлове

- `Dockerfile`: лек image, базиран на `nginx:alpine`.
- `nginx.conf`: сервира статичното приложение, изключва HTML кеша и оставя кратък кеш за assets.
- `docker-compose.yml`: изгражда и стартира приложението от локалната папка.
- `docker-compose.portainer.yml`: изгражда и стартира приложението директно от GitHub.
