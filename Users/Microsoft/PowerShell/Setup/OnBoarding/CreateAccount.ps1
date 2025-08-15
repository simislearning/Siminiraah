# --- Siminiraah Workflow Variables ---
$Siminiraah_MinNodeVersion   = "18.0.0"
$Siminiraah_MinPSVersion     = "7.0.0"
# =====================================================
# !!!!  D O  N O T  E D I T  B E L O W  !!!!
# =====================================================
# WARNING: Any changes below this line may break the 
# automation scripts. This section is managed by
# the Siminiraah automation engine.
# =====================================================

# --- Action: Check Versions ---
try {
    $nodeVersion = node -v 2>$null
    if (-not $nodeVersion) {
        Write-Host "❌ Node.js not found."
    } else {
        $nodeVersion = $nodeVersion.TrimStart("v")
        Write-Host "✅ Node.js Version: $nodeVersion"
    }
} catch {
    Write-Host "❌ Error checking Node.js version."
}

$psVersion = $PSVersionTable.PSVersion.ToString()
Write-Host "⚡ PowerShell Version: $psVersion"

# --- Optional: Version Checks ---
if ([version]$nodeVersion -lt [version]$Siminiraah_MinNodeVersion) {
    Write-Host "⚠ Node.js version is lower than required ($Siminiraah_MinNodeVersion)"
}

if ([version]$psVersion -lt [version]$Siminiraah_MinPSVersion) {
    Write-Host "⚠ PowerShell version is lower than required ($Siminiraah_MinPSVersion)"
}
