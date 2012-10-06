# Ruby Online Checker

An fast and simple REST based URL status checker. 

* Parses URLS from the second column of an CSV file 
* First column can be filled with an ID etc.
* Checks every URL for an status 200 ACK and rescue errors
* Prints the status, ID and URL for each row of the CSV
* Prints a summary with the number of responding/not responding URLs

## Sample CSV structure

id;url  
01;http://petschbot.blogspot.com  
02;http://www.google.com

## Usage

./onlinechecker.rb input.csv

Date: 2012/10/06
Author: petschbot
Web: petschbot.blogspot.com

