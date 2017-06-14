#!python2


#--------------------------------------------------------------------------------------------------------
#Spongebob Scraper 1.0
#@echo off
#set /P url="Enter URL: "
#set /P season="Enter season (1-4): "
#cd "C:\Program Files (x86)\youtube-dl"
#youtube-dl -o "C:\Users\Felix\Videos\Spongebob Seizoen 1 - 3\Seizoen %season%\%%(title)s.%%(ext)s" %url%
#----------------------------------------------------------------------------------------------------------
#Spongebob Scraper 2.0 
#Now 100% more automatic


from __future__ import unicode_literals
import youtube_dl
from bs4 import BeautifulSoup
import urllib2
import os.path


#global constants
maxSeason = 4;
seasonlocation = 9
episodelocation = 24


def findSeason( charlocation ): 
	firstDigit = string[charlocation]
	try: 
		float(string[charlocation+1])
		secondDigit = string[charlocation+1]
		season = (10*float(firstDigit)) + float(secondDigit)
	except ValueError:
		season = float(firstDigit)
		secondDigit = 0
	return season
	
def titleCleaner( string ):
	string = string.replace("SpongeBob - ", "")
	string = string.replace(" - Nickelodeon.nl", "")
	return string
	
def videoDownloader( title, url, season, maxSeason):

	
	
	if os.path.isfile("verification.txt") is False:
		verificationFile = open("verification.txt", "a")
		verificationFile.write("Automatically generated file, do not modify")
		verificationFile.write("\n")
	verificationFile = open("verification.txt", "r")
	if title not in verificationFile.read() and season < maxSeason+1:
		##print Figlet().renderText("Spongebob Scraper 2")
        episode = findSeason(episodelocation)
		print "Downloading", title, "From season", int(season), "episode", int(episode)
		print "from ", url
		ydl = youtube_dl.YoutubeDL({'outtmpl': 'D:\\Spongebob Videos\\Python Dump\\%(title)s.%(ext)s'})
		with ydl:
			ydl.download([url])
		verificationFile = open("verification.txt", "a")
		verificationFile.write(title)
		verificationFile.write("\n")
	elif season > maxSeason: 
		print "Episode is in season 5+"
	else: 
		print "Episode has been downloaded already"
	verificationFile.close()
	return
	
#def autoPrint( amount ):
	for i in range (1, amount):
		print
	return
	



##print Figlet().renderText("Spongebob Scraper 2")
#autoPrint(13)

	
originalURL = 'http://www.nickelodeon.nl/shows/474-spongebob'
soup = BeautifulSoup(urllib2.urlopen(originalURL).read(), "html5lib")

#If h6 exists run this code, the first page might not be a full episode which crashes the program
try:
	string =  soup.h6.string
	season = findSeason(seasonlocation)
	title = titleCleaner(soup.title.string)
	#print Figlet().renderText("Spongebob Scraper 2")
	videoDownloader(title, originalURL, season, maxSeason)
except AttributeError:
	print("This function might not work correctly, go back and repair this later")
	print("Altough it should be fine")
	print("")

li =  soup.findAll('li', class_ = 'fullepisode playlist-item')
for i in range (1, 12):
	for a in li[i].find_all('a', href=True):
		url = a['href']
		soup = BeautifulSoup(urllib2.urlopen(url), "html5lib")
		string = soup.h6.string
		season = findSeason(seasonlocation)
		title = titleCleaner(soup.title.string)
		videoDownloader(title, url, season, maxSeason)
		
#print Figlet().renderText("Done")
#autoPrint(18)
