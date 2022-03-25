# Connect to your Azure Account (optional if using Cloud Shell)
Connect-AzAccount

# store the variable 'resourceGroup' for your resource group name
$resourceGroup = "pwshstorage-rg"
# store the variable 'location' for the region location of your storage account
$location = "westus"
# store the variable 'storageAccountName' as a globally unique name(make yours unique)
$storageAccountName = "globallyuniquename302848"

# Create a new Azure Resource Group
New-AzResourceGroup -Name $resourceGroup -Location $location

New-AzStorageAccount -ResourceGroupName $resourceGroup `
  -Name $storageAccountName `
  -Location $location `
  -SkuName Standard_LRS `
  -Kind StorageV2

