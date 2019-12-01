# FUN30 Demo Steps

## Demo 1: Visual Studio Code

General tour of Visual Studio Code. Things to highlight include:

- Activity bar (file explorer / extensions)
- Editor pane
- Panel (Output / Terminal)

Code editing (Node JS example):

- Basic code editing
- Intellisense
- Method definition .via mouse hovering
- Method code behind .via right click > go to definition
- Split screen / side by side
- Debugging (execute code locally)
- Debugging (break point)
- Deploy to Azure
- Git integration

PowerShell / CLI:

- az --version
- az login
- az vm list
- az vm list -o table
- sh ignite-tour-fun30/2-cli-posh/aci.sh

- Get-Module -ListAvailable
- Connect-AzAccount
- get-azvm
- pwsh ignite-tour-fun30/2-cli-posh/aci.ps1

## Demo 2: Cloud Shell

- Open cloud shell in portal
- Quick demo, it's a shell (ls, touch, etc..)
- Open cloud at shell.azure.com
- Clone repo to shell environment
- Open up code editor and take a look at the Azure shell scripts
- Execute one if you want
- Finally, take a look at docs integration

```
git clone https://github.com/neilpeterson/talk-ignite-tour.git
```

## Demo 3: Azure Templates

- Quick tour of the include templates
- Point out parameters, variables, resources, and outputs
- az group create --name test123 --location eastus
- az group deployment create --name test123 --resource-group test123 --template-file ignite-tour-fun30/3-arm_template/azuredeploy.json