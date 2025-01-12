#!/bin/bash

# Check if Xvfb is already running for display 99
if ! ps -ef | grep -q "Xvfb :99"; then
    # Start Xvfb if it's not running
    Xvfb :99 -screen 0 1024x768x24 &
fi

# Set DISPLAY environment variable
export DISPLAY=:99

# Start your application
/app/main
