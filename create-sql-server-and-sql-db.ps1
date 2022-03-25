# Connect to your Azure Account (optional if using Cloud Shell)
Connect-AzAccount

# set the variable 'resourceGroupName' to a resource group name that you can enter on your own
$resourceGroupName = Read-Host -Prompt "Enter the Resource Group name"

# set the variable 'location' to a location that you can enter on your own
$location = Read-Host -Prompt "Enter the location (i.e. centralus)"

# set the variable 'templateUri' to a valid ARM template
$templateUri = "https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/sql-encryption-protector-byok/azuredeploy.json"

# create a new deployment using the ARM template
New-AzResourceGroupDeployment -ResourceGroupName $resourceGroupName -TemplateUri $templateUri -Location $location
