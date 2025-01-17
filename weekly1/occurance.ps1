# Function to count occurrences of each character in a string 
function Count-CharacterOccurrences {
    param (
        [string]$inputString
    )
    
    # Create an empty array to store characters that we have already counted
    $charList = @()

    # Loop through each character in the string
    foreach ($char in $inputString.ToCharArray()) {
        # Check if the character is already counted
        if ($charList -contains $char) {
            continue
        }
        
        # Count occurrences of this character
        $count = ($inputString.ToCharArray() | Where-Object {$_ -eq $char}).Count
        
        # Output the character and its count
        Write-Host "$($char): $count"
        
        # Add the character to the list of counted characters
        $charList += $char
    }
}

# Example
$input = "Hello, It's Awesome"
Count-CharacterOccurrences -inputString $input
