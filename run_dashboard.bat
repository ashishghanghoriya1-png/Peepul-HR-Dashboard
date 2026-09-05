@echo off
title Peepul Executive HR Analytics Dashboard
echo ====================================================================
echo      PEEPUL EXECUTIVE HR ANALYTICS & PREDICTIVE DASHBOARD
echo ====================================================================
echo Local Web Access   : http://localhost:8501
echo Network Web Access : http://192.168.29.222:8501
echo ====================================================================
echo.
cd /d "%~dp0"
python -m streamlit run app.py --server.port 8501 --server.address 0.0.0.0
pause
