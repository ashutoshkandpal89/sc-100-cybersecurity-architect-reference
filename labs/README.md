# Hands-on Labs

Small, safe, copy-paste labs that reinforce the architecture notes. Everything is original and MIT licensed.

| Lab | Skill | Tools | Maps to |
|-----|-------|-------|---------|
| [01 KQL hunting](01-kql-hunting/) | Query identity and activity logs | Log Analytics / Sentinel / Defender portal | [Note 03](../docs/03-security-operations.md) |
| [02 Policy baseline](02-policy-baseline/) | Assign and review Azure Policy | Azure CLI | [Notes 02, 05](../docs/05-infrastructure-network.md) |
| [03 Secure storage (Bicep)](03-bicep-secure-storage/) | Deploy a hardened storage account | Bicep + Azure CLI | [Note 08](../docs/08-data-ai-security.md) |
| [04 Conditional Access report](04-graph-conditional-access-report/) | Read-only CA inventory | PowerShell + Microsoft Graph | [Note 04](../docs/04-identity-access.md) |
| [05 GitHub OIDC to Azure](05-github-oidc-to-azure/) | Secretless pipeline auth | GitHub Actions + Azure CLI | [Note 07](../docs/07-applications-devsecops.md) |

## Before you start
- Use a **lab or sandbox tenant/subscription**, never production.
- Required access varies per lab (listed in each README). Prefer least privilege; use PIM if available.
- **Cost:** labs use free or low-cost resources, but you are responsible for your own Azure charges. Always run the cleanup steps.
- Read scripts before running them. Nothing here modifies identity policy; lab 04 is read-only.
- Examples assume Azure CLI 2.60+, Bicep via `az bicep`, PowerShell 7+, and the `Microsoft.Graph` module. Command output and portal UI change; confirm against Microsoft Learn.

## Variables used throughout
```bash
export LAB_RG="rg-sc100-lab"
export LAB_LOCATION="westeurope"   # choose a region near you
```

## Clean up everything
```bash
az group delete --name "$LAB_RG" --yes --no-wait
```
