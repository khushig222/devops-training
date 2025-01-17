# Function to check if a number is an Armstrong number 
function Check-ArmstrongNumber {
    param (
        [Parameter(Mandatory = $true)]
        [int]$number
    )
    
    # Save the original number to compare later
    $originalNumber = $number

    # Calculate the number of digits in the number
    $numDigits = 0
    $tempNumber = $number
    while ($tempNumber -gt 0) {
        $tempNumber = [math]::Floor($tempNumber / 10)
        $numDigits++
    }

    # Calculate the sum of digits raised to the power of the number of digits
    $sum = 0
    $tempNumber = $number
    while ($tempNumber -gt 0) {
        # Extract the last digit
        $digit = $tempNumber % 10
        # Add the digit raised to the power of the number of digits
        $sum += [math]::Pow($digit, $numDigits)
        # Remove the last digit from the number
        $tempNumber = [math]::Floor($tempNumber / 10)
    }

    # Check if the sum equals the original number
    if ($sum -eq $originalNumber) {
        Write-Host "$number is an Armstrong number."
    } else {
        Write-Host "$number is not an Armstrong number."
    }
}

# Example
Check-ArmstrongNumber -number 153      # Test with an Armstrong number

