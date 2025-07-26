#!/bin/bash

# Nexus - Start All Servers
# This script starts both the Django backend and SvelteKit frontend

echo "🚀 Starting Nexus Development Servers..."

# Function to cleanup background processes on exit
cleanup() {
    echo "🛑 Stopping all servers..."
    kill $BACKEND_PID $FRONTEND_PID 2>/dev/null
    exit 0
}

# Set up signal handlers
trap cleanup SIGINT SIGTERM

# Start Backend (Django)
echo "📡 Starting Django Backend..."
cd backend
source venv/bin/activate
python manage.py runserver 8000 &
BACKEND_PID=$!
cd ..

# Wait a moment for backend to start
sleep 2

# Start Frontend (SvelteKit)
echo "🎨 Starting SvelteKit Frontend..."
cd frontend
npm run dev &
FRONTEND_PID=$!
cd ..

# Wait a moment for frontend to start
sleep 3

echo ""
echo "✅ All servers started successfully!"
echo ""
echo "🌐 Frontend: http://localhost:5173 (or http://localhost:5174 if 5173 is busy)"
echo "🔧 Backend:  http://localhost:8000"
echo "📊 GraphQL:  http://localhost:8000/graphql/"
echo "👤 Admin:    http://localhost:8000/admin/"
echo ""
echo "Press Ctrl+C to stop all servers"

# Wait for user to stop
wait 