# data-hub-backend

## Quick Start

### Start the Backend Container
This project uses Docker Compose for containerized development. Follow the steps below to get started:

- **Commands**:  
    Run the service in detached mode:
    ```bash
    docker compose -f ./docker/compose.yaml up -d
    ```
    Use the following command to access the container:
    ```dockerfile
    docker exec -it data-hub-backend-dev sh
    ```