#!/bin/bash
set -e

# Download Hugo Extended
HUGO_VERSION="0.120.0"
echo "Downloading Hugo Extended ${HUGO_VERSION}..."
curl -L "https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_linux-amd64.tar.gz" -o hugo.tar.gz
tar -xzf hugo.tar.gz
chmod +x hugo
export PATH="$PWD:$PATH"

# Debug: Check theme structure
echo "Checking theme structure..."
ls -la themes/shibui/layouts/_partials/ || echo "Theme partials not found"

# Build the site with verbose output
./hugo --gc --minify --verbose

