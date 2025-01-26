#!/bin/sh
set -e

# Install dependencies if node_modules directory is empty
if [ ! -d "node_modules" ] || [ ! "$(ls -A node_modules)" ]; then
    npm install
fi

# Start the application
exec "$@"
