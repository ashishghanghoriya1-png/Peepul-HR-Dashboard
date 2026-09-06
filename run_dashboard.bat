@echo off
title Peepul HR Analytics Dashboard Launcher
cls
echo ======================================================================
echo             PEEPUL EXECUTIVE HR ANALYTICS DASHBOARD LAUNCHER          
echo ======================================================================
echo.
cd /d "%~dp0"

echo [1/2] Checking local Ollama GPU AI service (http://127.0.0.1:11434)...
powershell -Command "try { $res = Invoke-RestMethod -Uri 'http://127.0.0.1:11434/api/tags' -TimeoutSec 3; Write-Host '[OK] Ollama local AI server is online.' -ForegroundColor Green } catch { Write-Host '[NOTE] Ollama local AI server not detected on port 11434. Running in standard dashboard mode.' -ForegroundColor Yellow }"

echo.
echo [2/2] Launching Streamlit HR Analytics Dashboard...
python -m streamlit run app.py

pause
