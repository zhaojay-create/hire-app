up:
	docker compose -f infra/docker/docker-compose.dev.yml up -d

down:
	docker compose -f infra/docker/docker-compose.dev.yml down

logs:
	docker compose -f infra/docker/docker-compose.dev.yml logs -f

migrate-up:
	migrate -path apps/api/migrations \
	-database "$(DATABASE_URL)" \
	up

migrate-down:
	migrate -path apps/api/migrations \
	-database "$(DATABASE_URL)" \
	down 1