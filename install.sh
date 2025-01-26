#!/bin/bash

# Function to check if a command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Check for required commands
echo "Checking requirements..."
for cmd in docker docker-compose git; do
    if ! command_exists $cmd; then
        echo "Error: $cmd is not installed"
        exit 1
    fi
done

# Set permissions
echo "Setting up permissions..."
chmod +x restart-server.sh
chmod +x setup-dev.sh
chmod +x init-project.sh
chmod +x install-laravel.sh
chmod +x backend/docker-entrypoint.sh
chmod +x frontend/docker-entrypoint.sh

# Create storage directory if it doesn't exist
mkdir -p backend/storage/framework/{sessions,views,cache}
chmod -R 775 backend/storage
chmod -R 775 backend/bootstrap/cache

# Start containers
echo "Starting Docker containers..."
docker compose -f docker/docker-compose.yml up -d

echo "Installation complete!"
echo "You can now access:"
echo "- Frontend: http://localhost:5173"
echo "- Backend API: http://localhost:8000"
echo "- phpMyAdmin: http://localhost:8080 (user: root, password: root)"
