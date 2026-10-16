# Lab 02 — Azure Policy Baseline

**Goal:** Assign a built-in policy in audit mode, review compliance, then clean up.
**Needs:** Azure CLI logged in (`az login`), Contributor + Resource Policy Contributor on a lab subscription or resource group.

Run [assign-and-review.sh](assign-and-review.sh). It looks up built-in definitions by **display name** (IDs and names can change), assigns them to a lab resource group, and prints compliance.

**Discuss:**
- When would you use `Deny` instead of `Audit`?
- How would you scale this with management groups and initiatives?
- How does this relate to MCSB and the Defender for Cloud regulatory compliance dashboard?
