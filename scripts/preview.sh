#!/usr/bin/env bash
# Simple static site preview server for IOW Takeover 2026 website
# Opens a local HTTP server to test the site before deploying

set -e

PORT="${PORT:-8000}"
echo "========================================"
echo "  IOW Takeover 2026 - Local Preview"
echo "========================================"
echo ""
echo "Starting HTTP server on port ${PORT}..."
echo "Open your browser to: http://localhost:${PORT}"
echo ""
echo "Press Ctrl+C to stop the server"
echo ""

# Check if we're in the right directory
if [ ! -f "index.html" ]; then
    echo "Error: index.html not found!"
    echo "Please run this script from the repository root directory."
    exit 1
fi

# Try Python 3 first (most common)
if command -v python3 &> /dev/null; then
    python3 -m http.server "$PORT"
# Fall back to Python 2
elif command -v python &> /dev/null; then
    python -m SimpleHTTPServer "$PORT"
# Try PHP if Python isn't available
elif command -v php &> /dev/null; then
    php -S "localhost:${PORT}"
else
    echo "Error: No suitable web server found!"
    echo "Please install Python 3 or use: npx serve"
    exit 1
fi
