#!/bin/bash
set -x  # Enable debug mode to see what is happening

# Define the list of websites
websites=("https://google.com" "https://facebook.com" "https://twitter.com" "https://goit.global/ua/")

# Define the log file path
log_file="/usr/src/app/website_status.log"  # Ensure this path is correct and writable

# Clear or create the log file
> "$log_file"

# Iterate through all the websites in the list
for url in "${websites[@]}"; do
    # Use curl to check the status of the site, follow redirects
    http_status=$(curl --write-out "%{http_code}" --silent --output /dev/null --location "$url")
    
    # Check if the status code is 200
    if [ "$http_status" -eq 200 ]; then
        echo "$url is UP" >> "$log_file"
    else
        echo "$url is DOWN" >> "$log_file"
    fi
done

# Print a message indicating that the results have been written to the file
echo "Results have been written to $log_file"
