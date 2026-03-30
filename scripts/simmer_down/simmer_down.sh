#!/bin/bash

# Quick script to generate unnecessarily verbose text
# and then make it concise with summarization

echo "============" > record.txt
echo "Verbose text" >> record.txt
echo "============" >> record.txt
echo "" >> record.txt

echo "Generating verbose text..."
ollama run llama3.2:latest "Generate an unnecessarily verbose text about recent events at the workplace. Make the text several paragraphs long. Do not add any additional or conversational elements to your response." >> record.txt

echo "============" >> record.txt
echo "Revised text" >> record.txt
echo "============" >> record.txt
echo "" >> record.txt

echo "Revising the text concisely..."
cat record.txt | ollama run llama3.2:latest "Make this text simple, concise and no longer than one paragraph. It should read like a modern professional corporate memo that would be sent out as an email. No fancy wording should be included. It could start with something like 'Hello team. It has come to our attention that...'. Keep only the most essential information. Do not add any notes, additional information, or conversational elements to your response." >> record.txt

echo "Done! Results in 'record.txt'"
