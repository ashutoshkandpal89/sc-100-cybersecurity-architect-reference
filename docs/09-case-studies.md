# 09 · Case Studies (Original)

Fictional organisations. Try your own design first, then compare.

---
## Case 1 — Regional hospital group: ransomware resilience
**Context:** 12 hospitals, hybrid AD, Azure IaaS for imaging, backups on a NAS in the same domain. A peer hospital was hit by ransomware.
**Requirements:** RTO 4h for clinical systems, protect patient data, minimal new tooling.
**Design:**
- Azure Backup for Azure and Arc-enabled servers; vault in a separate subscription with soft delete, immutability, and **Resource Guard**.
- Privileged access: PIM for Azure/Entra roles, separate admin accounts, secured admin workstations, Defender for Identity on DCs.
- Defender for Endpoint/Servers + Sentinel; alert on backup policy changes and mass deletions.
- Tested clean-room recovery runbook; offline break-glass credentials.
**Trade-off:** Immutability increases storage cost and limits deletions; justified by recovery guarantees.

---
## Case 2 — Retail group after acquisition: tenant and identity consolidation
**Context:** Two Entra tenants, overlapping apps, partner access via shared mailboxes.
**Requirements:** Collaboration now, full consolidation in 18 months, no weakening of controls.
**Design:**
- Cross-tenant access settings (trust MFA/device claims) and cross-tenant synchronisation for interim collaboration.
- Unified Conditional Access baseline in the target tenant; report-only first.
- Entitlement management for partner access with access reviews; remove shared mailboxes.
- Defender XDR multitenant view and Sentinel for central visibility.
**Trade-off:** Trusting inbound MFA claims reduces friction but requires trust in the partner tenant's controls.

---
## Case 3 — Manufacturer: OT/IoT visibility and segmentation
**Context:** Plants with legacy controllers, flat networks, remote vendor access via shared VPN.
**Requirements:** Visibility without disrupting production, secure vendor access.
**Design:**
- Defender for IoT network sensors on SPAN/mirror ports; integrate with Sentinel.
- Segment IT/OT (Purdue-style zones) with firewalls and conduits.
- Replace shared VPN with identity-based, time-bound access (Entra Private Access / PIM-style approvals, session recording where available).
- Patching strategy using compensating controls where devices cannot be patched.
**Trade-off:** Passive monitoring is safer than active scanning for fragile devices.

---
## Case 4 — Bank rolling out Microsoft 365 Copilot
**Context:** 15,000 users, SharePoint sprawl, mixed labelling, regulators asking for evidence.
**Requirements:** Enable Copilot without exposing confidential data.
**Design:**
- Oversharing assessment: remediate "everyone" permissions, stale sites, site access reviews.
- Sensitivity labels with encryption for confidential data; auto-labelling for known patterns.
- DLP and DSPM for AI; audit retained; Insider Risk and Communication Compliance as required.
- Pilot to a defined group, review findings, then expand.
**Trade-off:** Slower rollout, but avoids data-exposure incidents and gives compliance evidence.

---
## Case 5 — SaaS startup: DevSecOps and API security
**Context:** GitHub + AKS + APIM, secrets in pipeline variables, public APIs, enterprise customers asking for SOC 2.
**Requirements:** Secure delivery without slowing releases.
**Design:**
- OIDC federation from GitHub Actions to Azure; remove stored secrets.
- Secret scanning with push protection, code scanning, dependency review; branch protection and required checks.
- Defender for Cloud DevOps security + Defender for Containers; admission policies in AKS.
- APIM with JWT validation and rate limits; Defender for APIs; WAF at Front Door.
- Evidence: Defender for Cloud compliance dashboard and Azure Policy mapped to SOC 2 controls.
**Trade-off:** Gates add pipeline time; use severity thresholds to keep flow.
