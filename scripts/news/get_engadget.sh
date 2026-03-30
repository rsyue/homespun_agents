#!/bin/bash

# Quick script to get Endgadget headlines at date_time d_t
# @author: Richard Yue

date_time=$(date '+%d_%m_%Y_%H:%M');
echo "Current date/time: $date_time"
echo "Creating folder..."
mkdir engadget/$date_time

wget -qO- -nc https://rss.app/feeds/00SH6dSMI3Rnd5FM.xml | ollama run llama3.2:latest "\n\nSummarize the most important plaintext items in this XML under the 'description' tag. Do not add any text to your response. Respond with a brief bulleted list.\n\n" > engadget/$date_time/news.txt
