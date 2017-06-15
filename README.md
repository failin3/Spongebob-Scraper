# Spongebob-Scraper
Script which checks if any new spongebob videos have been uploaded and download them if they fulfill season and episode conditions. 
The script is written for nickelodeon.nl and might not work for other nickelodeon websites or shows. 
The current settings will download all episodes from season 1 through 4, these can be changed by adjusting the variable maxSeason in the global constants. Note that spongebobScraper2.py & spongebobScraper3.py are different scripts, the former is for python 2 and the latter is for python 3 so make sure you edit the right script. 

## Usage 
Clone or download this repository. Run install dependencies and fill in your python version to install all dependencies, then start run.bat to start the script.


## Autorun on startup
Add a run.bat shortcut to `%programdata%\Microsoft\Windows\Start Menu\Programs\Startup` in windows 10 to automatically start the script on each boot. 



## Dependencies 
#### python
#### requirements.txt
The rest of the requirements are found in requirements.txt and can be installed by running "Install dependencies.bat", or by opening a command prompt in the folder and typing in ```python -m pip install -r requirements.txt```
#### Reinstalling
If you change your python version, or some files have gone missing, you can rerun "Install dependencies.bat" to change or recover the files. 
