@echo off



if exist version.txt (
set /p version= <version.txt
) else (
set /p version=Python 2 or 3:
)
echo %version% > version.txt

if not exist autorun.bat (
(echo @echo off & echo python spongebobScraper%version%.py) > autorun.bat)

cd "D:\Spongebob Videos\Python Script

echo %version%

python spongebobScraper%version%.py