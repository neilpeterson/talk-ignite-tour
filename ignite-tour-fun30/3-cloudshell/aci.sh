NAME=ams-cli-demo-001

# Create Resource Group
az group create --name $NAME --location eastus

# Create container
az container create --resource-group $NAME --name $NAME --image microsoft/aci-helloworld --dns-name-label $NAME

# Get Public IP Address
echo "Container IP Address:"
echo $(az container list --query "[?contains(name, '$NAME')].[ipAddress.ip]" --output tsv)