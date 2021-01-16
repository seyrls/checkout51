# Checkout51 code challenger

## Folder structure

This repo contains the code based on Checkout51 code challenger.
On this repo the folder structure is:

- docker
  - database (Maria db config)
  - logs (nginx logs)
  - nginx (httpd config)
  - php-fpm (php 7.4 config)
  - src (Symfony 5 files)

## Code base

To clone the whole project, please follow the following instruction.

```
git clone git@github.com:seyrls/checkout51.git

cd checkout51

cd docker

docker-compose up

docker-compose run php-fpm composer install
```

## Docker Compose

The docker compose will install the following containers:

- Maria DB
- Nginx
- php 7.4
- Symfony 5