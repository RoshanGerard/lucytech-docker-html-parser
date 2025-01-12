#!/bin/bash

# Start Xvfb with the specified server arguments
Xvfb :99 -screen 0 1024x768x24 &

# Set DISPLAY environment variable
export DISPLAY=:99

# Start your application
/app/main
