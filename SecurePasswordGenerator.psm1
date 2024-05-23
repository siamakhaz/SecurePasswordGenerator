function New-SecurePassword {
    param (
        [int]$length = 12
    )

    # Define the character sets
    $numbers = "0123456789"
    $lowercase = "abcdefghijklmnopqrstuvwxyz"
    $uppercase = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    $symbols = "!@#$%^&*()-_=+[]{}|;:,.<>?/`~"

    # Helper function to generate random numbers that sum up to a specific total with a minimum value for each part
    function Get-RandomDistribution {
        param (
            [int]$total,
            [int]$parts
        )
        $result = @(0)
        for ($i = 1; $i -lt $parts; $i++) {
            $result += Get-Random -Minimum 1 -Maximum ($total - $parts + $i)
        }
        $result += $total
        $result = $result | Sort-Object
        $distribution = @()
        for ($i = 0; $i -lt $parts; $i++) {
            $distribution += $result[$i + 1] - $result[$i]
        }
        return $distribution
    }

    # Determine the number of each type of character
    $characterTypesCount = Get-RandomDistribution -total $length -parts 4
    $numNumbers = $characterTypesCount[0]
    $numLowercase = $characterTypesCount[1]
    $numUppercase = $characterTypesCount[2]
    $numSymbols = $characterTypesCount[3]

    # Initialize an empty password array
    $password = @()

    # Randomly select characters based on the determined counts and add to the password array
    if ($numNumbers -gt 0) {
        $password += ($numbers | ForEach-Object {$_} | Get-Random -Count $numNumbers).ToCharArray()
    }
    if ($numLowercase -gt 0) {
        $password += ($lowercase | ForEach-Object {$_} | Get-Random -Count $numLowercase).ToCharArray()
    }
    if ($numUppercase -gt 0) {
        $password += ($uppercase | ForEach-Object {$_} | Get-Random -Count $numUppercase).ToCharArray()
    }
    if ($numSymbols -gt 0) {
        $password += ($symbols | ForEach-Object {$_} | Get-Random -Count $numSymbols).ToCharArray()
    }

    # Shuffle the password array to make it more random
    $password = $password | Sort-Object {Get-Random}

    # Ensure the password is exactly the specified length
    $password = -join $password[0..($length-1)]

    # Return the generated password
    return $password
}

# Example usage
$securePassword = New-SecurePassword -length 12
Write-Output $securePassword
