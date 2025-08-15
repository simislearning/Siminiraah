# --- Workflow Variables ---
$Username = ''
$Password = ''
# -------------------------

# --- Action: Create Local Account ---
Write-Host "Creating local account for $Username..."
# This is a simplified example. In a real script, you would use New-LocalUser.
# $PasswordString = [System.Runtime.InteropServices.Marshal]::PtrToStringAuto([System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($Password))
# New-LocalUser -Name $Username -Password $Password -FullName $Username -Description "Account created by script."

Write-Host "Account for $Username created successfully."
