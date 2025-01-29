#Function to check if a year is a leap year
function Check-LeapYear {
    param (
        [Parameter(Mandatory = $true)]
        [int]$year
    )
    
    if (($year % 4 -eq 0 -and $year % 100 -ne 0) -or ($year % 400 -eq 0)) {
        Write-Host "$year is a leap year."
    } else {
        Write-Host "$year is not a leap year."
    }
}
Check-LeapYear -year 1988