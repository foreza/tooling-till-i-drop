#!/bin/bash


# Use this to quickly test POSTs to some url to get an incredibly rough idea of uptime 

while true; do 

    # Specify some file name and dir
    VAR1=ouput/$(date +%H%m%s).json       
    echo "Hitting configure route and writing to file $VAR1";

    curl --location --request POST '<someurl>' \
    --header 'Content-Type: application/json' \
    --data-raw '{"blah":12345,"hh":"ii"} >> $VAR1

     # sleep and repeat
    sleep 5                     
done
