#!/usr/bin/bash

# Script to grab and summarize all WSJ headlines
# @author: Richard Yue

date_time=$(date '+%d_%m_%Y_%H:%M');
echo "Current date/time: $date_time"
echo "Creating folder..."
mkdir wsj/$date_time

for topic in "opinion" "world" "business" "markets" "tech" "us" "politics"
do
    echo "Writing $topic.txt in $date_time"
    ./get_news.sh $topic > wsj/"$date_time"/"$topic".txt
done
