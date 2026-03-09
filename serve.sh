#!/bin/bash
# Start local server and open the poster in Chrome

cd "$(dirname "$0")"

# Open Chrome after a short delay to let the server start
(sleep 2 && open -a "Google Chrome" "http://localhost:3000/index.html") &

# Start the server (this blocks until you Ctrl+C)
npx -y serve .
