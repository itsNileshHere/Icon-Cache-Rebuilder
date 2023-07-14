@echo off
echo.
taskkill /f /im explorer.exe
timeout 2 /nobreak>nul
echo.

if exist %LocalAppData%\iconCache.db (
DEL /F /S /Q /A %LocalAppData%\iconCache.db
)

DEL /F /S /Q /A %LocalAppData%\Microsoft\Windows\Explorer\iconcache_*.db
DEL /F /S /Q /A %LocalAppData%\Microsoft\Windows\Explorer\thumbcache_*.db

timeout 2 /nobreak>nul
echo.
set/p<nul =Press any key to Restart Explorer.exe . . . &pause>nul
start explorer.exe
