@echo off
setlocal enabledelayedexpansion

for /d /r %%D in (*) do (
  set "list="

  for %%F in ("%%D\*.png" "%%D\*.jpg") do (
    if exist "%%F" (
      set "filename=%%~nxF"
      if defined list (
        set "list=!list!,"
      )
      set "list=!list!"!filename!""
    )
  )

  if defined list (
    echo [!list!] > "%%D\images.json"
    echo File created: %%D\images.json
  )
)

echo Done.
pause
