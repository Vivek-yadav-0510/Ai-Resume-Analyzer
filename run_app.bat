@echo off
REM Run the Streamlit app using the project's virtual environment
set VENV="%~dp0venvapp\Scripts\python.exe"
if not exist %VENV% (
  echo Virtual environment not found at %VENV%
  echo Create it or update the path in this script.
  exit /b 1
)
%VENV% -m streamlit run App\App.py --server.address 127.0.0.1 --server.headless true %*
