param(
    [Parameter(Mandatory = $true)]
    [string]$PackerLogPath
)


$logContent = Get-Content -Path $PackerLogPath -Raw
$SearchString = "Checksum verification failed:"

$matchingLines = Select-String -Path $PackerLogPath -Pattern ([Regex]::Escape($SearchString))
echo $logContent
echo"=========================================================="
echo $matchingLines
