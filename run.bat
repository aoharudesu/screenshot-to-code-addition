@echo off

cd backend
start cmd /k "poetry run uvicorn main:app --reload --port 7001"
timeout /t 2

cd ..\frontend
start cmd /k "yarn dev"
timeout /t 2

start http://localhost:5173
