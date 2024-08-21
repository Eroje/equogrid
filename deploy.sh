#!/bin/sh

echo "Switching to branch dev"
git checkout dev

echo "Building app"
npm run build

echo "Deploying files to server"
rsync -avP build/ root@178.79.129.58:/var/www/equogridmarketplace.com/
echo "Deployment complete"