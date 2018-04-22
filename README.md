# hi-node
Lab app to use in azure deploy. we create two release branch v1.0 and v1.1, to test swapping deployment slots(prod and uat).

- v1.0 will display hi azure 1.0 (prod)
- v1.1 will display hi azure 1.1 (uat)

## git change

### [1] create branches

```
- create a branch from master
git checkout -b v1.0
git commit -a -m 'added branch v1.0'

- push local branch to remote
git push -u origin v1.0

- list branches
git branch -a

- merge v1.1 to master
git checkout master
git merge v1.1
```

## Azure Cli

### [1] install azure-cli in ubuntu
```
curl -L https://aka.ms/InstallAzureCli | bash

- log in/out azure
az login
az logout

- portal
https://portal.azure.com

```

### [2] create resource-group, plan, app
```
- clear resources
az group delete --name xxxx

- list all locations
az appservice list-locations --sku FREE

- create group nodeResourceGroup
az group create --name nodeResourceGroup --location "Canada East"

- create service plan
az appservice plan create --name nodeServicePlan --resource-group nodeResourceGroup --sku FREE

- create web app
az webapp create --resource-group nodeResourceGroup --plan nodeServicePlan --name hi-1.0 --runtime "NODE|8.1"
```

### [3] logging
```
- download
az webapp log download --resource-group nodeResourceGroup --name hi2419

- streaming
az webapp log tail --name hi2419 --resource-group nodeResourceGroup --filter Error
```
