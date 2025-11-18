@echo off
setlocal
set path=%~d0%~p0

"C:\Tools\ungoogled-chromium_129.0.6668.89-1.1_windows\chrome.exe" --allow-file-access-from-files --disable-web-security --user-data-dir="C:\Temp\chrome_dev" "%path%index.html"

endlocal
