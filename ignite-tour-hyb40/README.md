## Azure Polocy

- Management Group
- Apply single policy (tag resource)
- Apply custom policy (tag resource by type)

Create resource group and apply policy:

```
pwsh ./policy-tag-type/tagByType.ps1 -ResourceGroupName appendResourceType -ResourceType Microsoft.Storage/storageAccounts -Location eastus -PolicyName tagByType
```

Create storage account which will be tagged.

```
az storage account create --name storage007$RANDOM --resource-group appendResourceType
```

Create container instance which will not be tagged.

```
az container create --name contianer$RANDOM --resource-group appendResourceType --image microsoft/aci-helloworld
```

- Apply initative (Storage and VM SKU)

Create resource group and then use portal to apply initative.

```
az group create --name development --location eastus
```

## RBAC

- Manual configure reader
- Azure CLI create custom role and assign

Create Role:

```
az role definition create --role-definition ./rbac-restart-vm/restartVM.json
```

Assign user to Role:

```
az role assignment create --role "Restart Virtual Machines" --assignee rebecca@nepeters.com
```

## Blueprints

- Manually create blueprint
- Azzure Devops demo