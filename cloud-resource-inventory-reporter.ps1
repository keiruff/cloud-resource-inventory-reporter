$Results = @()
$Region = "us-east-1"

try {
    $RDSInstances = aws rds describe-db-instances --region $Region --output json | ConvertFrom-Json

    foreach ($DB in $RDSInstances.DBInstances) {
        $Results += [PSCustomObject]@{
            CloudProvider    = "AWS"
            ResourceType     = "RDS"
            ResourceName     = $DB.DBInstanceIdentifier
            Engine           = $DB.Engine
            Status           = $DB.DBInstanceStatus
            Region           = $Region
            AvailabilityZone = $DB.AvailabilityZone
        }
    }
}
catch {
    Write-Host "AWS resources not found or AWS CLI not configured."
}

$Results | Export-Csv ".\cloud-resource-report.csv" -NoTypeInformation

Write-Host ""
Write-Host "Cloud inventory report created."
Write-Host "Resources Found: $($Results.Count)"
Write-Host ""