#!/bin/sh
set -e

# Install dependencies if vendor directory is empty
if [ ! -d "vendor" ] || [ ! "$(ls -A vendor)" ]; then
    composer install
fi

# Generate key if not exists
if [ ! -f ".env" ]; then
    cp .env.example .env
    php artisan key:generate
fi

# Run migrations
php artisan migrate

# Start the application
exec "$@"
