@echo off

:start
if exist run.bat (goto reinstall)
if exist requirements.txt (goto reinstall)

REM set /p v=Python 2 or 3:

REM if %v%==2 (goto install)
REMif %v%==3 (goto install)
REM echo Please fill in your python version: 2 or 3.
goto install

:install
if not exist run.bat ((echo @echo off & echo python spongebobScraper.py) > run.bat)

if not exist requirements.txt ((echo youtube_dl==2017.2.24.1 & echo beautifulsoup4==4.6.0 & echo html5lib==0.999999999& echo future==0.16.0) > requirements.txt)

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
