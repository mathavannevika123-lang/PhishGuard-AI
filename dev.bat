@echo off
title PhishGuard AI - Dev Mode
color 0a
echo =====================================================================
echo           PHISHGUARD AI - Live Development Launcher
echo =====================================================================
echo.
cd /d "%~dp0"

echo Starting Backend on http://127.0.0.1:8000 ...
start "PhishGuard Backend" cmd /k "cd backend && py -m uvicorn main:app --reload --host 127.0.0.1 --port 8000"

echo Starting Frontend on http://localhost:5173 ...
start "PhishGuard Frontend" cmd /k "cd frontend && npm run dev"

echo.
echo Both servers started! Open http://localhost:5173 in your browser.
