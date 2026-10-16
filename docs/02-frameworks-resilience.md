# 02 · Frameworks, Landing Zones & Ransomware Resilience

## Cloud Adoption Framework (CAF) — security view
Lifecycle: **Strategy → Plan → Ready → Adopt → Govern → Manage**, with **Secure** as a methodology that runs across them.
- Strategy/Plan: business risk, security roles, adoption of Zero Trust.
- Ready: **landing zones**: management groups, subscriptions, policy, network topology, identity foundations.
- Govern: Azure Policy, initiatives, Defender for Cloud standards, cost and compliance guardrails.
- Manage: operations baselines, logging, incident response, resilience.

## Well-Architected Framework (WAF)
Five pillars: **Reliability, Security, Cost Optimization, Operational Excellence, Performance Efficiency**. For SC-100, concentrate on the **Security** pillar and the trade-offs it creates with the others (for example, cost of logging versus detection coverage).

## Landing zone security checklist
- Management group hierarchy with policy inheritance
- Azure Policy: deny/audit/deployIfNotExists for baseline controls
- Centralised logging to a Log Analytics workspace / Sentinel
- Hub-spoke or Virtual WAN with firewall inspection; private endpoints for PaaS
- Role design: least privilege, PIM-eligible, no standing Owners
- Separate subscriptions for platform, workloads, and sandbox

## Ransomware & destructive-attack resilience
Microsoft's guidance boils down to three goals:
1. **Prepare for recovery**: tested, isolated, immutable backups; documented plan.
2. **Limit the scope of damage**: protect privileged access; segment; least privilege.
3. **Make it hard to get in**: patching, MFA, email/endpoint protection, attack-surface reduction.

| Area | Design choices |
|------|----------------|
| Backup | Azure Backup with soft delete and immutable vaults; **Resource Guard** (multi-user authorisation) for critical operations; separate subscription/tenant for backup vaults |
| Recovery | Defined RTO/RPO, tested restores, clean-room recovery, offline copies of break-glass credentials |
| Privileged access | Enterprise access model (control/management/data planes), PIM, secured admin workstations, phishing-resistant MFA |
| Detection | Defender XDR + Sentinel, attack disruption, alerts on backup deletion/policy changes |
| Hybrid | Azure Backup/Site Recovery for on-prem and Arc-enabled servers |

## Insider and supply-chain threats (design hooks)
- Insider: Purview Insider Risk Management, DLP, least-privilege data access, auditing.
- Supply chain: signed artifacts, SBOM, dependency scanning, locked-down pipelines (see [note 07](07-applications-devsecops.md)).
