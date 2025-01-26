#!/bin/bash

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${BLUE}Initializing Restaurant Management System...${NC}"

# Create necessary directories if they don't exist
mkdir -p frontend backend docker/nginx/conf.d

# Initialize Git repositories
echo -e "${GREEN}Initializing Git repositories...${NC}"

# Backend repository
cd backend
git init
echo "vendor/" > .gitignore
echo "node_modules/" >> .gitignore
echo ".env" >> .gitignore
git add .
git commit -m "Initial backend commit"
git branch -M main

# Frontend repository
cd ../frontend
git init
echo "node_modules/" > .gitignore
echo "dist/" >> .gitignore
echo ".env" >> .gitignore
git add .
git commit -m "Initial frontend commit"
git branch -M main

# Docker repository
cd ..
git init
echo ".env" > .gitignore
git add .
git commit -m "Initial docker configuration commit"
git branch -M main

# Copy .env.example to .env
cd docker
cp .env.example .env

echo -e "${GREEN}Project initialized successfully!${NC}"
echo -e "${BLUE}Next steps:${NC}"
echo "1. Update the repository URLs in README.md"
echo "2. Push the repositories to GitHub"
echo "3. Run 'docker-compose up -d' to start the development environment"
