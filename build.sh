#!/bin/bash

# Create dist directory if it doesn't exist
mkdir -p dist

# Get password from environment variable or prompt
if [ -z "$STATICRYPT_PASSWORD" ]; then
    echo "Please enter the password for encryption:"
    read -s STATICRYPT_PASSWORD
fi

# Copy logo to dist
cp supertypelogo.png dist/

# Encrypt the HTML file
npx staticrypt src/ksi-dashboard.html \
    -p "$STATICRYPT_PASSWORD" \
    -o dist/index.html \
    --template password-template.html \
    --remember 15 \
    --title "KSI Dashboard" \
    --instructions "Please enter the password to access the secure dashboard"

echo "Dashboard encrypted successfully!"