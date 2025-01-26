#!/bin/bash
set -e

# Install dependencies
composer install --no-interaction --no-progress

# Wait for MySQL to be ready
until nc -z -v -w30 db 3306
do
  echo "Waiting for database connection..."
  sleep 5
done

# Set storage permissions
chown -R www-data:www-data /var/www/html/storage
chmod -R 775 /var/www/html/storage

# Generate key if not exists
php artisan key:generate --no-interaction

# Run migrations
php artisan migrate --force

exec "$@"
