#!/bin/bash

# Function to check if a port is in use
check_port() {
    lsof -i :$1 >/dev/null 2>&1
    return $?
}

# Function to kill process using a port
kill_port() {
    echo "Killing process on port $1..."
    lsof -ti :$1 | xargs kill -9 2>/dev/null
}

# Check and handle backend port (8000)
if check_port 8000; then
    echo "Port 8000 is in use"
    kill_port 8000
fi

# Check and handle frontend port (5173)
if check_port 5173; then
    echo "Port 5173 is in use"
    kill_port 5173
fi

# Start backend server
echo "Starting Laravel server..."
cd backend
php artisan serve --port=8000 &

# Start frontend server
echo "Starting Vite dev server..."
cd ../frontend
npm run dev &

echo "Servers started successfully!"
echo "Backend running on http://localhost:8000"
echo "Frontend running on http://localhost:5173"
