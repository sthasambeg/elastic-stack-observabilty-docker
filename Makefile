set-permissions:
	chmod go-w filebeat/filebeat.yml
	chmod go-w filebeat/no-ssl.filebeat.yml
	chmod go-w metricbeat/metricbeat.yml
	chmod go-w metricbeat/no-ssl.metricbeat.yml

dev-anish:
	docker compose -p elastic_logger -f anish.docker-compose.yml up --build -d
stop-anish:
	docker compose -p elastic_logger down

dev:
	${MAKE} set-permissions
	docker -D compose -p elastic_stack -f docker-compose.yml up --build -d
stop:
	${MAKE} set-permissions
	docker compose -p elastic_stack down
restart:
	docker compose -p elastic_stack down
	docker -D compose -p elastic_stack -f docker-compose.yml up --build -d

dev-no-ssl:
	${MAKE} set-permissions
	docker -D compose -p no-ssl-elastic_stack -f no-ssl.docker-compose.yml up --build -d
stop-no-ssl:
	docker compose -p no-ssl-elastic_stack down
restart-no-ssl:
	${MAKE} set-permissions
	docker compose -p no-ssl-elastic_stack down
	docker -D compose -p no-ssl-elastic_stack -f no-ssl.docker-compose.yml up --build -d

dev-mock:
	cd _mock_third_party && make dev
stop-mock:
	cd _mock_third_party && make stop
restart-mock:
	cd _mock_third_party && make restart


