@echo off
setlocal

set "logfile=delete_log.txt"
set /a count_7z_png=0
set /a count_pimage=0
set /a count_md5=0
echo %date% %time%: Starting deletion process. > "%logfile%"
echo -------------------------
echo ------------------------- >> "%logfile%"
for /r %%F in (*^^.png) do (
    echo Deleting "%%F"
    echo Deleting "%%F" >> "%logfile%"
    del /q "%%F"
    set /a count_7z_png+=1
)
echo -------------------------
echo ------------------------- >> "%logfile%"
for /r %%F in (*.md5) do (
    echo Deleting "%%F"
    echo Deleting "%%F" >> "%logfile%"
    del /q "%%F"
    set /a count_md5+=1
)
echo -------------------------
echo ------------------------- >> "%logfile%"
for /r %%F in (*pimage.png) do (
    echo Deleting "%%F"
    echo Deleting "%%F" >> "%logfile%"
    del /q "%%F"
    set /a count_pimage+=1
)
echo Done.
echo %date% %time%: Done. >> "%logfile%"
echo Deleted %count_7z_png% files ending with ^^.png
echo Deleted %count_7z_png% files ending with ^^.png >> "%logfile%"
echo Deleted %count_md5% files ending with .md5
echo Deleted %count_md5% files ending with .md5 >> "%logfile%"
echo Deleted %count_pimage% files ending with pimage.png
echo Deleted %count_pimage% files ending with pimage.png >> "%logfile%"

endlocal
pause
