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

dev-ssl-free:
	docker -D compose -p ssl-free-elastic_stack -f ssl-free.docker-compose.yml up --build -d
stop-ssl-free:
	docker compose -p ssl-free-elastic_stack down
