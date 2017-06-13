# Spongebob-Scraper
Script which checks if any new spongebob videos have been uploaded and download them if they fulfill season and episode conditions. 
The script is written for nickelodeon.nl and might not work for other nickelodeon websites or shows. 
The current settings will download all episodes from season 1 through 4, these can be changed by adjusting the variable maxSeason in the global constants. 

## Usage 
Clone or download this repository, change the drive location in run.bat to the folder in which the script is stored.
Run install dependencies to install all dependencies, then start run.bat, fill in your python version to start the script.

## Autostart on startup
Add an autostart2.bat or autostart3.bat shortcut to `%programdata%\Microsoft\Windows\Start Menu\Programs\Startup` in windows 10 to automatically start the script on each boot. 
Select autostart2 for python2 and autostart 3 for python 3. 


## Dependencies 
#### python
Install dependencies.bat and run.bat. 
#### requirements.txt
The rest of the requirements are found in requirements.txt and can be installed by running "Install dependencies.bat", or by opening a command prompt in the folder and typing in ```python -m pip install -r requirements.txt```
