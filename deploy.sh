#!/bin/bash

# Replace the following URL with a public GitHub repo URL
# $RANDOM
gitrepo=https://github.com/dzca/hi-node
webappname=hi$RANDOM

# Create a web app.
az webapp create --name $webappname --resource-group nodeResourceGroup --plan \
nodeServicePlan --runtime "NODE|8.1"

# Deploy code from a public GitHub repository.
az webapp deployment source config --name $webappname --resource-group nodeResourceGroup \
--repo-url $gitrepo --branch master --manual-integration

# Copy the result of the following command into a browser to see the web app.
echo http://$webappname.azurewebsites.net
