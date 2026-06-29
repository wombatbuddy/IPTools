build:
	docker compose build

install:
	docker compose run --rm php composer install

test:
	docker compose run --rm php vendor/bin/phpunit
