#!/bin/bash
set -e

# Download Hugo Extended
HUGO_VERSION="0.120.0"
echo "Downloading Hugo Extended ${HUGO_VERSION}..."
curl -L "https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_linux-amd64.tar.gz" -o hugo.tar.gz
tar -xzf hugo.tar.gz
chmod +x hugo
export PATH="$PWD:$PATH"

# Build the site
./hugo --gc --minify

