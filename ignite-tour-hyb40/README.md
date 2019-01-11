## Azure Polocy

- Management Group
- Apply single policy (tag resource)
- Apply custom policy (tag resource by type)

```
pwsh ./policy-tag-type/tagByType.ps1 -ResourceGroupName appendResourceType -ResourceType Microsoft.Storage/storageAccounts -Location eastus -PolicyName tagByType
```

```
az storage account create --name storage007$RANDOM --resource-group appendResourceType
```

```
az container create --name contianer$RANDOM --resource-group appendResourceType --image microsoft/aci-helloworld
```

- Apply initative (Storage and VM SKU)

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