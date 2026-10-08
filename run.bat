@echo off
title PhishGuard AI - HacXLerate 2026 Launcher
color 0b
echo =====================================================================
echo           PHISHGUARD AI - HacXLerate 2026 (Team Elite Squad)
echo      AI-Powered Digital Scam & Phishing Protection Platform
echo =====================================================================
echo.
echo [1/3] Checking environment...
cd /d "%~dp0"

echo [2/3] Starting PhishGuard AI Server (FastAPI + AI Engine)...
echo Serving application at http://127.0.0.1:8000 ...
start "" "http://127.0.0.1:8000"

cd backend
py -m uvicorn main:app --host 127.0.0.1 --port 8000
pause
