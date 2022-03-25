# Connect to your Azure Account (optional if using Cloud Shell)
Connect-AzAccount

<#-----------------------------------------------
  PowerShell 6 must be installed on your Linux VM
  along with the subsystem entry in sshd config.
  Run this script:   
  https://raw.githubusercontent.com/chadmcrowell/scripts-for-labs/master/CustomBashScripts/install-pwsh.sh
-----------------------------------------------#>

# Create a new PS Session to a Linux VM named 'UbuntuVM1' with the username 'TestUser' (prompts you for your password)
$session = New-PSSession -HostName UbuntuVM1 -UserName TestUser

# view the sessions information
$session

# access the VM via a PowerShell Session
Enter-PSSession $session



