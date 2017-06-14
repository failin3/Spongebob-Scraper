@echo off


set /p v=Python 2 or 3:


if not exist autorun.cfg (
(echo @echo off & echo cd %cd% & echo python spongebobScraper%v%.py) > autorun.bat)

if not exist run.bat ((echo @echo off & echo python spongebobScraper%v%.py) > run.bat)


if exist "requirements.txt" (
  python -m pip install -r requirements.txt
) else (
  echo Could not find requirements.txt
  echo please download it
  pause cls
)

