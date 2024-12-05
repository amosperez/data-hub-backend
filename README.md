# data-hub-backend

## Development Notes
### Dockerfile
- **Purpose**:  
    This Dockerfile creates a lightweight Node.js container designed to stay running indefinitely. It is configured to allow you to manually execute commands within the container for backend development.

- **Commands**:  
    Run the following command to build the Docker image:
    ```dockerfile
    docker build -t node-runner .
    ```
    Start the container with a specific name:
    ```dockerfile
    docker run --name data-hub-backend-dev node-runner
    ```
    Use the following command to access the container:
    ```dockerfile
    docker exec -it data-hub-backend-dev sh
    ```


## Environment Variables

- **The `.env` file in the `docker` folder is used to configure Docker-specific settings that are not included in the repository.**:

    Current Configuration:
    ```dockerfile
    COMPOSE_PROJECT_NAME=compose-stack-name # Sets the name of the Docker Compose stack.
    ```