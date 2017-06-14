@echo off

set /p v=Python 2 or 3:

if not exist run.bat ((echo @echo off & echo python spongebobScraper%v%.py) > run.bat)

if not exist requirements.txt ((echo youtube_dl==2017.2.24.1 & echo beautifulsoup4==4.6.0 & echo html5lib==0.999999999) > requirements.txt)

if exist "requirements.txt" (
  python -m pip install -r requirements.txt
) else (
  echo Could not find requirements.txt
  echo please download it
  pause cls
)

cls
echo Installation is done
pause cls

