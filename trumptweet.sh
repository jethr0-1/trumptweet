figlet "TrumpTweet"
echo 'Starting TrumpTweet...'
TRUE='true'
while [ TRUE='true' ]
do
    OGTWEET=$(python3 grabtweet.py)
    echo 'Tweet found!'
    echo $OGTWEET
    echo 'Waiting 2 minutes...'
    sleep 2m

    NEWTWEET=$(python3 grabtweet.py)
    echo 'Tweet found! Checking similarity to last tweet...'
    if [ NEWTWEET = OGTWEET ]
    then
        echo 'Tweet is the same. Waiting 2 minutes then checking again...'
        sleep 2m

    else
	echo 'New tweet found! Printing and activating TTS...'
	OGTWEET=NEWTWEET
	espeak "$OGTWEET. hahaha what an idiot trump is"
        
    fi
done
