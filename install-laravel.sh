#!/bin/bash

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${BLUE}Installing Laravel...${NC}"

# Move to backend directory
cd backend

# Install Laravel globally
composer create-project laravel/laravel .

# Install JWT package
composer require php-open-source-saver/jwt-auth

echo -e "${GREEN}Laravel installation complete!${NC}"
