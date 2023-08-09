set-permissions:
	chmod go-w filebeat/filebeat.yml

dev:
	${MAKE} set-permissions
	docker compose -p mock -f logging.docker-compose.yml up --build -d
stop:
	docker compose -p mock down
restart:
	${MAKE} set-permissions
	docker compose -p mock down
	docker compose -p mock -f logging.docker-compose.yml up --build -d

bridge:
	docker network connect bridge_network mock-backend-filebeat-1
	docker network connect bridge_network no-ssl-elastic_stack-es01-1
	docker network connect bridge_network no-ssl-elastic_stack-kibana-1

install-ping:
	docker exec -u 0 mock-backend-filebeat-1 apt install iputils-ping -y
	docker exec -u 0 no-ssl-elastic_stack-es01-1 apt install iputils-ping -y
	docker exec -u 0 no-ssl-elastic_stack-kibana-1 apt install iputils-ping -y

ping:
	docker exec mock-backend-filebeat-1 ping -c 2 no-ssl-elastic_stack-es01-1
	docker exec mock-backend-filebeat-1 ping -c 2 no-ssl-elastic_stack-kibana-1