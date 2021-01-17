# Checkout51 code challenger

## Folder structure

This repo contains the code based for Checkout51 code challenger.
On this repo the folder structure is:

- docker
  - database (Maria db config)
  - logs (nginx logs)
  - nginx (httpd config)
  - php-fpm (php 7.4 config)
  - src (Symfony 5 files)

## Code base

To set up project, please follow the following instruction.

```
git clone git@github.com:seyrls/checkout51.git

cd checkout51

cd docker

docker-compose up

docker-compose run php-fpm composer install

Access http://localhost/offer
```

## Docker Compose

The docker compose will install the following containers:

- Maria DB
- Nginx
- php 7.4
- Symfony 5

## Database

The database name used in the project was named as **checkout51** and the username was **checkout** and password was **apppassword**.

Inside the folder docker there is a file called **.env** and there contains some environment variable values.

Another file is used for performance during the deployment. The file is called **init.sql** inside the folder **docker/database**. This file contains the database structure as well as a dummy data.

This approach was done because Symfony does not have a seeder class native.

## APIs available

The API is availble in the current URL (http://localhost/offer) and two endpoints were made.

- get collection (all offer)
  - http://localhost/offer
- get single record (one offer)
  - http://localhost/offer/{offer_id}

Some query params are availble to make easier filter the current response.
The following possible values:

- sort
  - offer_id, name, cash_back
- direction
  - asc, desc
- output
  - json

Some examples:

- http://localhost/offer?sort=name&direction=asc
- http://localhost/offer?sort=cash_back&direction=desc
- http://localhost/offer/40200
- http://localhost/offer?sort=name&direction=asc&output=json