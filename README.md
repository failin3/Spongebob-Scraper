# Spongebob-Scraper
Script which checks if any new spongebob videos have been uploaded and download them if they fulfill season and episode conditions. 
The script is written for nickelodeon.nl and might not work for other nickelodeon websites or shows. 
The current settings will download all episodes from season 1 through 4, these can be changed by adjusting the variable maxSeason in the global constants. 

## Usage 
Clone or download this repository, change the drive location in run.bat to the folder in which the script is stored.
If your python 2 location is not C:\Python27\python.exe then change those directories in "install dependencies.bat" and "run.bat".
Run run.bat

## Dependencies 
#### python 2.7
#### requirements.txt
The rest of the requirements are found in requirements.txt and can be installed by running "Install dependencies.bat", or by opening a command prompt in the folder and typing in ```python -m pip install -r requirements.txt```
