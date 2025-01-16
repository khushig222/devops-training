param (
    $ExecutionPolicy = "Unrestricted"
)

# Check if the execution policy is set to Unrestricted
if ($ExecutionPolicy -eq "Unrestricted") {
    # Set the execution policy to Unrestricted for the current session
    Set-ExecutionPolicy -ExecutionPolicy $ExecutionPolicy -Scope Process -Force
    Write-Host "Execution Policy set to $ExecutionPolicy for this session."
} else {
    Write-Host "The provided execution policy is not $ExecutionPolicy . Please specify $ExecutionPolicy as the execution policy."
}