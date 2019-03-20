$name = "ams-demo001"

# Create Resource Group
New-AzResourceGroup -Name $name  -Location Eastus

# Create container
New-AzContainerGroup -ResourceGroup $name  -Name $name  -Image microsoft/aci-helloworld -DnsNameLabel $name

# Get Public IP Address
Get-AzContainerGroup | where {$_.Name -eq $name} | Select IpAddress