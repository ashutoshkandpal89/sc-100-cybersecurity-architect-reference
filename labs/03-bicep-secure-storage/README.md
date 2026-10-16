# Lab 03 — Secure Storage with Bicep

**Goal:** Deploy a storage account with security-focused settings, then break compliance on purpose and observe.
**Needs:** Azure CLI, Contributor on a lab resource group.

```bash
az group create --name "$LAB_RG" --location "$LAB_LOCATION"
az deployment group create \
  --resource-group "$LAB_RG" \
  --template-file main.bicep \
  --parameters namePrefix=sc100lab
```

**What the template enforces:** HTTPS only, TLS 1.2 minimum, no anonymous blob access, shared-key access disabled (Entra auth only), public network access disabled, blob soft delete and versioning.

**Try it:**
1. Re-run [Lab 02](../02-policy-baseline/) and check the account's compliance.
2. Change `publicNetworkAccess` to `Enabled` and redeploy. What do the policies report?
3. Add a Private Endpoint and Private DNS zone (stretch). Which note explains why?
4. Add a `Microsoft.Authorization/locks` resource to prevent accidental deletion.

Clean up: `az group delete --name "$LAB_RG" --yes --no-wait`
