run_local:
	docker compose -f docker-compose.local.yml up -d

stop_local:
	docker compose -f docker-compose.local.yml down

run_prod:
	docker compose -f docker-compose.yml up -d

stop_prod:
	docker compose -f docker-compose.yml down