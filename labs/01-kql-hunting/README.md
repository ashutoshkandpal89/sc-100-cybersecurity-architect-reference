# Lab 01 — KQL Hunting Basics

**Goal:** Run detection-style queries against identity and Azure activity logs.
**Needs:** A Log Analytics workspace or Sentinel with Entra sign-in/audit logs and Azure Activity connected. Reader access to the workspace.

1. Open **Logs** in the workspace (or *Advanced hunting* in the Defender portal; table names differ slightly).
2. Run each query from [queries.kql](queries.kql).
3. For each result, answer: *What is the risk? What would you automate? What is a likely false positive?*

**Stretch:** Turn query 3 into a Sentinel scheduled analytics rule with entity mapping, then add an automation rule that tags the incident.
