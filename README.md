# Docker Distribution Project

## Overview
This project contains two Docker services:
- **HTML Parser Service Docker**
- **HTML Parser UI Docker**

Each service has its respective Dockerfile located in the `docker/` directory. The `bin/` directory contains a script to build all Docker images, and the `.properties` file defines the Docker tag version.


## HTML Parser Service Docker
The `Dockerfile` for the HTML Parser Service is located at `docker/html-parser-service/Dockerfile`. This service parses HTML content and provides an API for accessing the parsed data.

### Usage
To build and run the HTML Parser Service Docker image:
1. Navigate to the `docker/html-parser-service/` directory.
2. Build the Docker image:
   ```sh
   docker build -t html-parser-service:$(cat ../../.properties | grep VERSION | cut -d'=' -f2) .
   
