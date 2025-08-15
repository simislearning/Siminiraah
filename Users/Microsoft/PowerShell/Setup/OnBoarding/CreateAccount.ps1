# --- Siminiraah Full Streaming Test Script ---
# This script tests various output types and simulates a delay 
# to confirm that output is being streamed in real-time.

# 1. Immediate Output
Write-Host "✅ Script execution started."
Write-Host "--------------------------------"

# 2. System Information Checks
Write-Host "Gathering system information..."

# Check PowerShell Version
try {
    $psVersion = $PSVersionTable.PSVersion.ToString()
    Write-Host "⚡ PowerShell Version: $psVersion"
} catch {
    Write-Error "❌ Failed to get PowerShell version."
}

# Check Node.js Version (with robust error handling)
try {
    # Invoke 'node -v' and capture output.
    $nodeVersionOutput = node -v 2>&1
    if ($LASTEXITCODE -ne 0) {
        # If node command fails, it will be caught below
        throw $nodeVersionOutput
    }
    $nodeVersion = $nodeVersionOutput.TrimStart("v")
    Write-Host "✅ Node.js Version: $nodeVersion"
} catch {
    Write-Warning "⚠️ Could not detect Node.js. Is it installed and in your system's PATH?"
    Write-Warning "   Error details: $_"
}

Write-Host "--------------------------------"

# 3. Simulate a long-running task with streaming progress
Write-Host "⏳ Simulating a 5-second task to test streaming..."
foreach ($i in 1..5) {
    Write-Host "   ... working, step $i of 5"
    Start-Sleep -Seconds 1
}
Write-Host "   Task simulation complete."
Write-Host "--------------------------------"

# 4. Demonstrate different output streams
Write-Host "Testing different output streams (all should be visible)..."
Write-Output "This is standard output from Write-Output."
Write-Warning "This is a warning message from Write-Warning."
Write-Error "This is a non-terminating error from Write-Error."

Write-Host "--------------------------------"

# 5. Final Output
Write-Host "🎉 Script finished."
