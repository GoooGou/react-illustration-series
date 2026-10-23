@echo off
chcp 65001 >nul
cd /d "%~dp0"
set "NODE18=F:\??\deepseek\.tools\node18\node.exe"
if not exist "%NODE18%" (
  echo Node 18 runtime not found:
  echo %NODE18%
  pause
  exit /b 1
)
echo Starting dumi at http://localhost:8000 ...
start "" http://localhost:8000
"%NODE18%" "node_modules\dumi\bin\dumi.js" dev
