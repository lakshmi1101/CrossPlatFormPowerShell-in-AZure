# Connect to your Azure Account (optional if using Cloud Shell)
Connect-AzAccount

# Create a new Azure Resource Group
New-AzResourceGroup -Name powershellvm-rg -Location eastus

# Create a variable that will store the credentials for the VM
$cred = Get-Credential -Message "Enter a username and password for the virtual machine."

# Create the Windows VM
$vmParams = @{
  ResourceGroupName = 'TutorialResources'
  Name = 'PowerShellVM1'
  Location = 'eastus'
  ImageName = 'Win2016Datacenter'
  PublicIpAddressName = 'pwshVMPubIp'
  Credential = $cred
  OpenPorts = 3389
}
$newVM1 = New-AzVM @vmParams

