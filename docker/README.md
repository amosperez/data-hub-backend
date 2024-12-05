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


### Compose.yaml
- **Purpose**:  
    The `compose.yaml` file simplifies the process of starting and stopping containers. It abstracts away the complexity of managing container options like ports, volumes, and networking. This allows for easier container orchestration in a development workflow.

- **Key Components**:
    - **Service Definition**: Defines the `data-hub-backend-dev` container, built from the specified `Dockerfile`.
    - **Network**: Uses a custom network named `application` to facilitate communication with other services if needed in the future.
    - **Volumes**: Mounts the `../backend` directory on the host machine to the `/backend` directory in the container, ensuring changes are reflected.
    - **Ports**: Maps port `5000` on the container to port `5000` on the host machine.

- **Commands**:  
    Run the service in detached mode:
    ```bash
    docker compose -f ./docker/compose.yaml up -d
    ```
    Use the following command to access the container:
    ```dockerfile
    docker exec -it container-name sh
    ```
    Stop the service:
    ```bash
    docker compose -f ./docker/compose.yaml down
    ```

### Why Use Docker Compose?
- **Streamlining Development Workflow**:
    - Using the `compose.yaml` file eliminates the need to write long `docker run` commands with ports, volumes, and networking each time you start or stop the container.
    - It’s particularly useful for development setups where containers need consistent configurations.

- **Your Workflow Preference**:
    - While the `Dockerfile` can be used directly for container management, the `compose.yaml` file is preferred for streamlining repetitive tasks like:
        - Starting the container with the correct volume and port mappings.
        - Stopping and cleaning up containers with a single command.

## Environment Variables

- **The `.env` file in the `docker` folder is used to configure Docker-specific settings that are not included in the repository.**:

    Current Configuration:
    ```dockerfile
    COMPOSE_PROJECT_NAME=compose-stack-name # Sets the name of the Docker Compose stack.
    ```