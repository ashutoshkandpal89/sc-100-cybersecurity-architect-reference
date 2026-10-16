# Lab 05 — Secretless GitHub Actions to Azure (OIDC)

**Goal:** Authenticate a workflow to Azure with workload identity federation, with no client secret.
**Needs:** A GitHub repo you own (use a fork or a private lab repo), Azure CLI, rights to create an app registration, and Role Based Access Control Administrator or Owner on the lab scope.

## 1. Create the app and federated credential
```bash
GH_ORG="<your-github-user-or-org>"
GH_REPO="<your-lab-repo>"

APP_ID=$(az ad app create --display-name "sc100-lab-oidc" --query appId -o tsv)
az ad sp create --id "$APP_ID" >/dev/null

az ad app federated-credential create --id "$APP_ID" --parameters '{
  "name": "github-main",
  "issuer": "https://token.actions.githubusercontent.com",
  "subject": "repo:'"$GH_ORG"'/'"$GH_REPO"':ref:refs/heads/main",
  "audiences": ["api://AzureADTokenExchange"]
}'
```

## 2. Grant least privilege (read-only here)
```bash
SUB_ID=$(az account show --query id -o tsv)
az role assignment create --assignee "$APP_ID" --role "Reader" \
  --scope "/subscriptions/$SUB_ID"
```

## 3. Add repository variables (not secrets)
`AZURE_CLIENT_ID` = `$APP_ID`, `AZURE_TENANT_ID`, `AZURE_SUBSCRIPTION_ID`. These identifiers are not credentials.

## 4. Add the workflow
Copy [azure-oidc.yml](azure-oidc.yml) to `.github/workflows/` in your lab repo and run it manually.

## Discussion
- Why is the `subject` claim critical? What happens if you scope it to a branch vs environment?
- How would you add a GitHub Environment with required reviewers for production?
- Compare to a stored client secret: rotation, leakage, auditability.

## Clean up
```bash
az ad app delete --id "$APP_ID"
```
