#!/bin/bash

echo "Deploying the code to Vercel"

# first step enter the vercel token via user manually
echo "Please enter your Vercel token:"
read -r vercel_token

if [ -z "$vercel_token" ]; then
    echo "Vercel token cannot be empty. Exiting."
    exit 1
fi
npx vercel --token "$vercel_token" --prod