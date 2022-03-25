# Connect to your Azure Account (optional if using Cloud Shell)
Connect-AzAccount

# Create a new Azure Resource Group
New-AzResourceGroup -Name keyvault-rg -Location eastus

# Create Azure Key Vault
New-AzKeyVault -Name 'mynewVault4208' -ResourceGroupName 'keyvault-rg' -Location 'East US'

# Add a secret to the Key Vault
# first, store the value as a secure string type in the variable 'secretvalue'
$secretvalue = ConvertTo-SecureString 'hVFkk965BuUv' -AsPlainText -Force

# create a secret named 'Password' with the value 'hVFkk965BuUv'
$secret = Set-AzKeyVaultSecret -VaultName 'mynewVault4208' -Name 'Password' -SecretValue $secretvalue

# view the secret as plain text
(Get-AzKeyVaultSecret -vaultName "mynewVault4208" -name "Password").SecretValueText



