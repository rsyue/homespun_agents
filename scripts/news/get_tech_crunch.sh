#!/bin/bash

# Quick script to grab and summarize top TechCrunch headlines
# @author: Richard Yue

date_time=$(date '+%d_%m_%Y_%H:%M');
echo "Current date/time: $date_time"
echo "Creating folder..."
mkdir techcrunch/$date_time

wget -qO- -nc https://rss.app/feeds/VAOkWFk4K8GIRFmI.xml | ollama run llama3.2:latest "\n\nSummarize the most important plaintext items in this XML under the 'description' tag. Do not add any text to your response. Respond with a brief bulleted list.\n\n" > techcrunch/$date_time/news.txt
