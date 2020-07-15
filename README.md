# trumptweet
A Python/Bash script designed to call Trump an idiot every time he posts something to his Twitter
Make sure this script constantly runs!! It will automatically check for new tweets every 2 minutes

# Installation
Make sure you have these Python modules:
1. bs4
2. requests
3. re

And make sure you have these dependencies:
1. figlet
2. espeak

# How it works:
TrumpTweet uses a combination of Python modules designed to grab data from webpages and only parse specific elements.
This script grabs all the HTML and CSS data from the legacy Twitter website (Would have used normal current Twitter, but JavaScript got in the way), then it strips all of that data down to the HTML tags surrounding the actual Tweet.
To stop the script from reading out every single piece of data with those HTML tags, it parses all of that data up until a "\n" (or an enter line character) occurs. 
Once a return line key is detected, it cuts off the rest of the data and saves it. Then, in 2 minutes time, it will check Trump's Twitter page again and go through the same process.
Except, after it has stripped the data down to the very latest Tweet, it will check that data against the first Tweet that it found. If they are the same, nothing will happen, and it'll scan for new Tweets again in 2 minutes.
If it's a NEW Tweet, it'll save the new Tweet and parse that data through to the TTS program.

# Usage
Just run the trumptweet.sh file, and your done!
No arguments are needed, but feel free to alter the program to take user input if you wish
