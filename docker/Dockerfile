FROM node:20.17.0

WORKDIR /backend

CMD ["tail", "-f", "/dev/null"]

# Notes:
# - Ensure you are in the folder containing the Dockerfile before running these commands.

# General Commands:
# - Build the Docker image:
#     docker build -t <image-name> .
# - Run the container with a name:
#     docker run --name <container-name> <image-name>
# - If not using the -it flag, exec into the container to interact with it:
#     docker exec -it <container-name> sh

# Your Specific Workflow:
# - Build the Docker image:
#     docker build -t node-runner .
# - Run the container with a name:
#     docker run --name data-hub-backend-dev node-runner
# - Exec into the container to interact with it:
#     docker exec -it data-hub-backend-dev sh