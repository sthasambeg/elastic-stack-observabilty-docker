dev1:
	docker compose -p elastic_logger -f anish.docker-compose.yml up --build -d

dev:
	docker -D compose -p elastic_stack -f docker-compose.yml up --build -d

stop1:
	docker compose -p elastic_logger down

stop:
	docker compose -p elastic_stack down