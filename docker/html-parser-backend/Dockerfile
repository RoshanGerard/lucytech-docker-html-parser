# Use the official Golang image
FROM golang:1.23-alpine

# Set the Current Working Directory inside the container
WORKDIR /app

# Install git
RUN apk add --no-cache git

# Clone the repository
RUN git clone https://github.com/RoshanGerard/lucytech-be-html-parser .

# Download all dependencies
RUN go mod download

# Build the Go app
RUN go build -o main ./cmd/main.go

COPY context/entrypoint.sh /

# Command to run the executable
ENTRYPOINT [ "./entrypoint.sh" ]
