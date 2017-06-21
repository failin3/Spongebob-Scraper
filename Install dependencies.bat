@echo off

:start
if exist run.bat (goto reinstall)
if exist requirements.txt (goto reinstall)

set /p v=Python 2 or 3:

if %v%==2 (goto install)
if %v%==3 (goto install)
echo Please fill in your python version: 2 or 3.
goto start

:install
if not exist run.bat ((echo @echo off & echo python spongebobScraper%v%.py) > run.bat)

if not exist requirements.txt ((echo youtube_dl==2017.2.24.1 & echo beautifulsoup4==4.6.0 & echo html5lib==0.999999999) > requirements.txt)

if exist "requirements.txt" (
  python -m pip install -r requirements.txt
) else (
  echo Could not find requirements.txt
  echo please download it
  pause cls
)

goto end


:reinstall 
set /p r=Do you want to reinstall the dependencies? (y or n):
if %r%==n (goto end)
if not %r%==y (goto reinstall)
if exist run.bat (del run.bat)
if exist "requirements.txt" (del "requirements.txt")
goto start

:end
cls
echo Installation is done
pause cls
