start-all:
	docker-compose -f docker-compose.development.yml build
	docker-compose -f docker-compose.development.yml up

start-all-multiple-workers:
	docker-compose -f docker-compose.development.yml build
	docker-compose -f docker-compose.development.yml up --scale worker=4

chown:
	sudo chown -R $(USERNAME):$(USERNAME) *

ssh:
	docker-compose -f docker-compose.development.yml exec api bash

stop:
	docker-compose -f docker-compose.development.yml down

rails-console:
	docker-compose -f docker-compose.development.yml exec api rails c
