# Connect to your Azure Account (optional if using Cloud Shell)
Connect-AzAccount

# Create a new Azure Resource Group
New-AzResourceGroup -Name webapp-rg -Location eastus

# Create an App Service Plan
New-AzAppServicePlan -ResourceGroupName "webapp-rg" `
  -Name "newwebapp-ASP" `
  -Location "East US" `
  -Tier "Basic" `
  -NumberofWorkers 2 `
  -WorkerSize "Small"

# Create a Web App
New-AzWebApp -ResourceGroupName Default-Web-WestUS `
  -Name "mynewwebSite8298" `
  -Location "West US" `
  -AppServicePlan "ContosoServicePlan"
