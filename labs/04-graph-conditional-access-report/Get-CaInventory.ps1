<#
.SYNOPSIS
  Read-only export of Conditional Access policies (name, state, grant controls, scope summary).
.NOTES
  Requires Microsoft.Graph module and Policy.Read.All delegated permission. Educational use.
#>
param(
  [string]$OutputPath = "./ca-inventory.csv"
)

$ErrorActionPreference = "Stop"
Connect-MgGraph -Scopes "Policy.Read.All" -NoWelcome

$policies = Get-MgIdentityConditionalAccessPolicy -All

$report = foreach ($p in $policies) {
  [pscustomobject]@{
    Name             = $p.DisplayName
    State            = $p.State
    IncludeUsers     = ($p.Conditions.Users.IncludeUsers -join ";")
    IncludeRoles     = ($p.Conditions.Users.IncludeRoles -join ";")
    ExcludeUsers     = ($p.Conditions.Users.ExcludeUsers -join ";")
    ExcludeGroups    = ($p.Conditions.Users.ExcludeGroups -join ";")
    IncludeApps      = ($p.Conditions.Applications.IncludeApplications -join ";")
    ClientAppTypes   = ($p.Conditions.ClientAppTypes -join ";")
    GrantOperator    = $p.GrantControls.Operator
    BuiltInControls  = ($p.GrantControls.BuiltInControls -join ";")
    AuthStrength     = $p.GrantControls.AuthenticationStrength.DisplayName
  }
}

$report | Sort-Object Name | Export-Csv -Path $OutputPath -NoTypeInformation
Write-Host "Exported $($report.Count) policies to $OutputPath"
$report | Group-Object State | Select-Object Name, Count | Format-Table -AutoSize

Disconnect-MgGraph | Out-Null
