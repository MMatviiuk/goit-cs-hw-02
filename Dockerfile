# Use the latest version of Alpine Linux as the base image
FROM alpine:latest

# Install necessary packages: curl for HTTP requests and bash for running the script
RUN apk --no-cache add curl bash

# Copy the check_websites.sh script from the host machine into the container at /check_websites.sh
COPY check_websites.sh /check_websites.sh

# Give execution permissions to the script
RUN chmod +x /check_websites.sh

# Define the default command to run when the container starts
ENTRYPOINT ["/check_websites.sh"]
