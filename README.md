# Credsly
Credential Manager utilising the power of Google Secret Manager

## Setup:
To setup the project locally, `Docker` with `Docker Compose` is the preferred way.

- Run Locally:

    docker compose -f docker-compose.local.yml up -d

    # To stop:
    docker compose -f docker-compose.local.yml down

- Run in Production version:

    docker compose -f docker-compose.yml up -d

    # To stop:
    docker compose -f docker-compose.yml down