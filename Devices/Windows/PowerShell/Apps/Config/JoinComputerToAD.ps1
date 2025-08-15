
$Siminiraah_Username = "DomainAdminUser"       # Domain account with permissions to join computers
$Siminiraah_Password = "StrongPassword123!"    # Domain account password
$Siminiraah_Domain = "example.com"             # AD domain
$Siminiraah_OU = "OU=Computers,DC=example,DC=com"  # Optional: specify OU
$Siminiraah_ComputerName = "NewComputer"       # Desired computer name


# Convert password to secure string
$SecurePassword = ConvertTo-SecureString $Siminiraah_Password -AsPlainText -Force
$Credential = New-Object System.Management.Automation.PSCredential ($Siminiraah_Username, $SecurePassword)

# Join the computer to the domain
Write-Host "Joining computer '$Siminiraah_ComputerName' to domain '$Siminiraah_Domain'..."

Add-Computer -DomainName $Siminiraah_Domain `
             -Credential $Credential `
             -OUPath $Siminiraah_OU `
             -NewName $Siminiraah_ComputerName `
             -Force -PassThru

Write-Host "Computer successfully joined to domain '$Siminiraah_Domain'."

# Optional: Restart computer to apply changes
# Restart-Computer -Force
