dev1:
	docker compose -p elastic_logger -f anish.docker-compose.yml up --build -d
stop1:
	docker compose -p elastic_logger down

dev:
	docker -D compose -p elastic_stack -f docker-compose.yml up --build -d
stop:
	docker compose -p elastic_stack down
restart:
	docker compose -p elastic_stack down
	docker -D compose -p elastic_stack -f docker-compose.yml up --build -d

dev-no-ssl:
	docker -D compose -p no-ssl-elastic_stack -f no-ssl.docker-compose.yml up --build -d
stop-no-ssl:
	docker compose -p no-ssl-elastic_stack down
restart-no-ssl:
	docker compose -p no-ssl-elastic_stack down
	docker -D compose -p no-ssl-elastic_stack -f no-ssl.docker-compose.yml up --build -d
