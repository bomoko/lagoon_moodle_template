SHELL := /bin/sh -x

.PHONY: build
build:
# add check for harbor registry login
	docker pull algmprivsecops/moodle_cli:latest 
	docker pull algmprivsecops/moodle_php:latest 
	docker pull algmprivsecops/moodle_nginx:latest 

.PHONY: up
up:
	docker-compose up -d

.PHONY: down
down:
	docker-compose down

.PHONY: stop
stop:
	docker-compose stop
