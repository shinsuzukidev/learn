Get-Service | Where-Object { $_.Status -match "^Run" } | Export-Csv -path "service.csv" -Encoding UTF8 -NoTypeInformation