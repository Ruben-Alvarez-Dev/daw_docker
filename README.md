# Restaurant Management System

## Project Structure
- `backend/`: Laravel 11 API with JWT authentication
- `frontend/`: React application with React Router and other utilities
- `docker/`: Docker configuration for development and production environments

## Repositories
This project is split into three repositories:
1. Backend API (Laravel) - [DAW_backend](https://github.com/yourusername/DAW_backend)
2. Frontend Application (React) - [DAW_frontend](https://github.com/yourusername/DAW_frontend)
3. Docker Configuration - [DAW_restaurant](https://github.com/yourusername/DAW_restaurant)

## Requirements
- Docker Desktop (Windows/macOS) or Docker Engine (Linux)
- Git

## Installation Instructions

### Using Docker Hub (Quickest Method)
```bash
# Pull and run the container
docker pull yourusername/daw-restaurant
docker-compose up -d
```

### Windows Installation
1. Install Docker Desktop for Windows
2. Clone the repositories:
```bash
git clone https://github.com/yourusername/DAW_restaurant.git
cd DAW_restaurant
git clone https://github.com/yourusername/DAW_frontend.git frontend
git clone https://github.com/yourusername/DAW_backend.git backend
```
3. Start the containers:
```bash
docker-compose up -d
```

### macOS Installation
1. Install Docker Desktop for macOS
2. Clone the repositories:
```bash
git clone https://github.com/yourusername/DAW_restaurant.git
cd DAW_restaurant
git clone https://github.com/yourusername/DAW_frontend.git frontend
git clone https://github.com/yourusername/DAW_backend.git backend
```
3. Start the containers:
```bash
docker-compose up -d
```

## Access Applications
- Frontend: http://localhost:5173
- Backend API: http://localhost:8000

## Development
- Frontend development server runs on port 5173
- Backend API server runs on port 8000
- MySQL database runs on port 3306 (internal to Docker network)

## Container Management
```bash
# Start containers
docker-compose up -d

# Stop containers
docker-compose down

# View logs
docker-compose logs -f

# Rebuild containers
docker-compose up -d --build
```
