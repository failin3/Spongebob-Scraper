@echo off



if exist version.cfg (
set /p v= <version.cfg
) else (
set /p v=Python 2 or 3:
>> version.cfg echo %v%
)

if not exist autorun.cfg (
(echo @echo off & echo cd %cd% & echo python spongebobScraper%v%.py) > autorun.bat)

python spongebobScraper%v%.py