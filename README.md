# goit-cs-hw-02

# Technical Task Description

## Task 1

Create a Bash script to check the availability of specific websites. Use `curl` to send HTTP GET requests to each URL and ensure it responds with status code 200. Log the results to a file with a clear format indicating whether each site is "UP" or "DOWN". Display a message confirming that results have been saved to the log file.

### Acceptance Criteria

- Script is written in Bash.
- Correctly uses `curl` for HTTP checks.
- Logs results to a file with proper formatting.
- Outputs a confirmation message.

## Task 2

Clone the FastAPI application from [this repository](https://github.com/GoIT-Python-Web/Computer-Systems-hw02). Create a `Dockerfile` and a `docker-compose.yaml` file to set up the application with PostgreSQL. Use Docker Compose to build and run the environment. Ensure the application and database are functioning properly.

### Acceptance Criteria

- Repository is cloned and `Dockerfile` is created.
- `docker-compose.yaml` configures both the application and PostgreSQL.
- Docker Compose is used to build and start the environment.
- Application and database are operational, verified through the UI.

________________________________________________________________________________________________________________________________________________________________________________________________________________

## Task 1

1. Create Dockerfile
2. Create check_websites.sh Script
3. Build and Run Docker Container
# Navigate to the directory containing the Dockerfile and script
cd "C:\Users\student\Desktop\Homework\WebsiteChecker"

# Build the Docker image
docker build -t website-checker .

# Run the Docker container
docker run --rm -v "C:\Users\student\Desktop\Homework\WebsiteChecker:/usr/src/app" website-checker

# Check the contents of the 'website_status.log' file
Get-Content "C:\Users\student\Desktop\Homework\WebsiteChecker\website_status.log"

 
