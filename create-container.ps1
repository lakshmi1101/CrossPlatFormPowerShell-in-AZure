# Connect to your Azure Account (optional if using Cloud Shell)
Connect-AzAccount

# Create a new Azure Resource Group
New-AzResourceGroup -Name container-rg -Location eastus

# Create a Container
New-AzContainerGroup -ResourceGroupName container-rg -Name mycontainer `
  -Image mcr.microsoft.com/windows/servercore/iis:nanoserver `
  -OsType Windows -DnsNameLabel aci-demo-win

# Check the status of the provisioning of the container instance and wait until the status is 'Succeeded'
Get-AzContainerGroup -ResourceGroupName myResourceGroup -Name mycontainer

