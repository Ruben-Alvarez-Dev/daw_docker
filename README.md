# Restaurant Management System

## Project Structure
- `backend/`: Laravel 11 API with JWT authentication
- `frontend/`: React application with React Router and other utilities
- `docker/`: Docker configuration for development and production environments

## Repositories
This project is split into three repositories:
1. Backend API (Laravel) - [daw_backend](https://github.com/Ruben-Alvarez-Dev/daw_backend)
2. Frontend Application (React) - [daw_frontend](https://github.com/Ruben-Alvarez-Dev/daw_frontend)
3. Docker Configuration - [daw_docker](https://github.com/Ruben-Alvarez-Dev/daw_docker)

## Requirements
- Docker Desktop (Windows/macOS) or Docker Engine (Linux)
- Git

## Installation Instructions

### Using Docker Hub (Quickest Method)
```bash
# Pull and run the container
docker pull rubenalvarezdev/daw-docker
docker-compose up -d
```

### Windows Installation
1. Install Docker Desktop for Windows
2. Clone the repositories:
```bash
git clone https://github.com/Ruben-Alvarez-Dev/daw_docker.git
cd daw_docker
git clone https://github.com/Ruben-Alvarez-Dev/daw_frontend.git frontend
git clone https://github.com/Ruben-Alvarez-Dev/daw_backend.git backend
```
3. Start the containers:
```bash
docker-compose up -d
```

### macOS Installation
1. Install Docker Desktop for macOS
2. Clone the repositories:
```bash
git clone https://github.com/Ruben-Alvarez-Dev/daw_docker.git
cd daw_docker
git clone https://github.com/Ruben-Alvarez-Dev/daw_frontend.git frontend
git clone https://github.com/Ruben-Alvarez-Dev/daw_backend.git backend
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
