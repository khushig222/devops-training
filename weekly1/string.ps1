# Function to reverse a string
function Reverse-String {
    param (
        [string]$inputString
    )

    # Convert the string to an array of characters
    $charArray = $inputString.ToCharArray()

    # Reverse the array
    [Array]::Reverse($charArray)

    # Join the characters back together into a string
    $reversedString = -join $charArray

    return $reversedString
}

# Example usage: Prompt for input and reverse the string
$inputString = Read-Host "Enter a string to reverse"
$reversedString = Reverse-String -inputString $inputString

Write-Host "Reversed String: $reversedString"
