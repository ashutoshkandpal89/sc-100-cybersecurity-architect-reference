# Lab 04 — Conditional Access Inventory (Read-Only)

**Goal:** Export a snapshot of Conditional Access policies to review against the baseline in [Note 04](../../docs/04-identity-access.md).
**Needs:** PowerShell 7+, `Microsoft.Graph` module, a lab tenant, and a role that can read policies (for example Security Reader or Conditional Access Administrator). The script requests only `Policy.Read.All`.

```powershell
Install-Module Microsoft.Graph -Scope CurrentUser   # once
./Get-CaInventory.ps1 -OutputPath ./ca-inventory.csv
```

**Review questions**
- Which policies are in `enabledForReportingButNotEnforced`? Should any be enforced?
- Are break-glass accounts excluded from every policy that should exclude them?
- Is legacy authentication blocked? Are admins covered by an authentication-strength policy?

This lab **does not change** any policy.
