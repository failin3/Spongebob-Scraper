@echo off
if exist "requirements.txt" (
  C:\Python27\python.exe -m pip install -r requirements.txt
  pause cls
) else (
  echo Could not find requirements.txt
  echo please download it
  pause cls
)
