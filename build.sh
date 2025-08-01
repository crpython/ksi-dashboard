#!/bin/bash

# Create dist directory if it doesn't exist
mkdir -p dist

# Get password from environment variable or prompt
if [ -z "$STATICRYPT_PASSWORD" ]; then
    echo "Please enter the password for encryption:"
    read -s STATICRYPT_PASSWORD
fi

# Encrypt the HTML file
npx staticrypt ksi-dashboard.html \
    -p "$STATICRYPT_PASSWORD" \
    -o dist/index.html \
    --remember 15 \
    --title "KSI Dashboard - Encrypted" \
    --instructions "Please enter the password to access the dashboard"

echo "Dashboard encrypted successfully!"