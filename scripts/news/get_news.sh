#!/usr/bin/bash

# Quick script to grab and summarize headlines from WSJ on a topic
# @author: Richard Yue

if [ $1 = "opinion" ]
then
    topic="RSSOpinion"

elif [ $1 = "world" ]
then
    topic="RSSWorldNews"

elif [ $1 = "business" ]
then
    topic="WSJcomUSBusiness"

elif [ $1 = "markets" ]
then
    topic="RSSMarketsMain"

elif [ $1 = "tech" ]
then
    topic="RssWSJD"

elif [ $1 = "us" ]
then
    topic="RSSUSnews"

elif [ $1 = "politics" ]
then
    topic="socialpoliticsfeed"

elif [ $1 = "economy" ]
then
    topic="socialeconomyfeed"
    
fi

wget -qO- -nc https://feeds.content.dowjones.io/public/rss/"$topic" | egrep "title|description" | ollama run llama3.2:latest "Very briefly summarize the top five news items in this text in a bulleted format. Do not add any additional text to your response:"
