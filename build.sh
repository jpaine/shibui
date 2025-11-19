#!/bin/bash
set -e

# Ensure we're in the project root
cd "$(dirname "$0")" || cd .

# Download Hugo Extended
HUGO_VERSION="0.120.0"
echo "Downloading Hugo Extended ${HUGO_VERSION}..."
curl -L "https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_linux-amd64.tar.gz" -o hugo.tar.gz
tar -xzf hugo.tar.gz
chmod +x hugo
export PATH="$PWD:$PATH"

# Debug: Check file structure and working directory
echo "Current working directory: $(pwd)"
echo ""
echo "Site layouts:"
ls -la layouts/_partials/ 2>/dev/null || echo "Site partials not found"
echo ""
echo "Theme layouts:"
ls -la themes/shibui/layouts/_partials/ 2>/dev/null || echo "Theme partials not found"
echo ""
echo "Checking if head.html exists:"
find . -name "head.html" -type f 2>/dev/null | head -5
echo ""
echo "Checking config.toml:"
cat config.toml | grep -E "theme|baseURL" || echo "Config check failed"

# Build the site
./hugo --gc --minify

