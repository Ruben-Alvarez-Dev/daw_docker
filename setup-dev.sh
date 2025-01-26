#!/bin/bash

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${BLUE}Setting up development environment...${NC}"

# Create MySQL init directory
mkdir -p docker/mysql/init

# Create storage directory with proper permissions
mkdir -p backend/storage/framework/{sessions,views,cache}
mkdir -p backend/storage/logs
chmod -R 775 backend/storage
chmod -R 775 backend/bootstrap/cache

# Configure backend environment
cd backend
cp .env.example .env
sed -i '' 's/DB_HOST=127.0.0.1/DB_HOST=db/' .env
sed -i '' 's/DB_DATABASE=laravel/DB_DATABASE=restaurant_db/' .env
sed -i '' 's/DB_USERNAME=root/DB_USERNAME=restaurant_user/' .env
sed -i '' 's/DB_PASSWORD=/DB_PASSWORD=restaurant_password/' .env

# Back to root directory
cd ..

echo -e "${GREEN}Development environment setup complete!${NC}"
echo -e "${BLUE}You can now run:${NC}"
echo "docker-compose up -d"
echo -e "${BLUE}Access points:${NC}"
echo "- Frontend: http://localhost:5173"
echo "- Backend API: http://localhost:8000"
echo "- phpMyAdmin: http://localhost:8080"
