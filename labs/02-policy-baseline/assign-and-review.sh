#!/usr/bin/env bash
# Lab 02 — assign built-in policies at resource-group scope and review compliance.
set -euo pipefail

LAB_RG="${LAB_RG:-rg-sc100-lab}"
LAB_LOCATION="${LAB_LOCATION:-westeurope}"

az group create --name "$LAB_RG" --location "$LAB_LOCATION" --output none
RG_ID=$(az group show --name "$LAB_RG" --query id -o tsv)

assign_by_name () {
  local display_name="$1"
  local assignment_name="$2"
  local def_id
  def_id=$(az policy definition list \
    --query "[?displayName=='${display_name}'].id | [0]" -o tsv)
  if [[ -z "$def_id" ]]; then
    echo "Definition not found: ${display_name} (name may have changed; search with: az policy definition list)"
    return 0
  fi
  az policy assignment create \
    --name "$assignment_name" \
    --display-name "$display_name" \
    --policy "$def_id" \
    --scope "$RG_ID" \
    --output none
  echo "Assigned: $display_name"
}

assign_by_name "Secure transfer to storage accounts should be enabled" "lab-secure-transfer"
assign_by_name "Storage accounts should disable public network access" "lab-storage-no-public"

echo "Triggering a compliance scan (can take several minutes)..."
az policy state trigger-scan --resource-group "$LAB_RG" --no-wait || true

echo "Compliance summary:"
az policy state summarize --resource-group "$LAB_RG" --output table || true

echo "Clean up with: az group delete --name $LAB_RG --yes --no-wait"
