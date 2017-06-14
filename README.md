# Spongebob-Scraper
Script which checks if any new spongebob videos have been uploaded and download them if they fulfill season and episode conditions. 
The script is written for nickelodeon.nl and might not work for other nickelodeon websites or shows. 
The current settings will download all episodes from season 1 through 4, these can be changed by adjusting the variable maxSeason in the global constants. 

## Usage 
Clone or download this repository. Run install dependencies and fill in your python version to install all dependencies, then start run.bat to start the script.


## Autorun on startup
Add an autorun.bat shortcut to `%programdata%\Microsoft\Windows\Start Menu\Programs\Startup` in windows 10 to automatically start the script on each boot. 



## Dependencies 
#### python
Install dependencies.bat and run.bat. 
#### requirements.txt
The rest of the requirements are found in requirements.txt and can be installed by running "Install dependencies.bat", or by opening a command prompt in the folder and typing in ```python -m pip install -r requirements.txt```
