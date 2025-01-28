# Function to check if a number is a palindrome
function Check-NumberPalindrome {
    param (
        [Parameter(Mandatory = $true)]
        [int]$number
    )
    
    # Save the original number to compare later
    $originalNumber = $number

    # Initialize variable to store the reversed number
    $reversedNumber = 0

    # Reverse the digits of the number
    while ($number -gt 0) {
        # Extract the last digit
        $digit = $number % 10
        # Add the digit to the reversed number
        $reversedNumber = ($reversedNumber * 10) + $digit
        # Remove the last digit from the number
        $number = [math]::Floor($number / 10)
    }

    # Check if the original number is equal to the reversed number
    if ($originalNumber -eq $reversedNumber) {
        Write-Host "$originalNumber is a palindrome."
    } else {
        Write-Host "$originalNumber is not a palindrome."
    }
}

# Example usage:
Check-NumberPalindrome -number 121   # Test with a palindrome number

Check-NumberPalindrome -number 123   # Test with a non-palindrome number
