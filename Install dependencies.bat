@echo off
if exist "requirements.txt" (
  python -m pip install -r requirements.txt
  pause cls
) else (
  echo Could not find requirements.txt
  echo please download it
  pause cls
)
