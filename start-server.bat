@echo off
chcp 65001
title Pohon - JSON Server

echo ========================================
echo            POHON - JSON SERVER
echo ========================================
echo.
echo Memulai server database...
echo.
echo 📍 Server akan berjalan di:
echo    http://localhost:3000
echo.
echo 📍 Untuk akses dari HP/device lain:
echo    http://[IP-COMPUTER]:3000
echo.
echo Tekan Ctrl+C untuk menghentikan server
echo ========================================
echo.

:: Check if node_modules exists
if not exist "node_modules" (
    echo ⚠️  Menginstall dependencies pertama kali...
    npm install
    echo.
)

:: Start JSON Server
echo 🚀 Starting JSON Server...
npx json-server --watch db.json --port 3000 --host 0.0.0.0

pause