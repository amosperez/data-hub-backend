from node:20.17.0

# Set the working directory inside the container
workdir /backend

# Copy entrypoint.sh to the container's /usr/local/bin directory
copy entrypoint.sh /usr/local/bin/backend.sh

# Make the entrypoint script executable
run chmod +x /usr/local/bin/backend.sh

# Set the entrypoint script
entrypoint ["/usr/local/bin/backend.sh"]