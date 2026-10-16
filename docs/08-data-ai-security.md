# 08 · Data & AI Workload Security

## Data security design flow
**Discover → Classify → Protect → Monitor → Respond.**

| Stage | Tools |
|-------|-------|
| Discover/classify | Purview Data Map / Unified Catalog scans, sensitive info types, trainable classifiers, DSPM |
| Protect (files/email) | Sensitivity labels, encryption, DLP |
| Protect (stores) | Encryption at rest, private networking, RBAC/Entra auth, backup |
| Monitor | Audit logs, Defender for Storage/SQL/Cosmos DB, Insider Risk |
| Respond | Sentinel/Defender XDR, retention/eDiscovery |

## Encryption & key management
| Choice | Guidance |
|--------|----------|
| Platform-managed keys | Default; lowest effort |
| Customer-managed keys (CMK) | Regulatory/control need; use Key Vault or Managed HSM |
| Key Vault vs Managed HSM | Vault: standard software/HSM-backed; **Managed HSM**: single-tenant, FIPS 140-3 Level 3 HSM for strict requirements |
| In-use protection | Confidential computing (confidential VMs, containers, enclaves) |
| Databases | TDE (default), **Always Encrypted** for client-side protection, dynamic data masking, row-level security |
| Key hygiene | Purge protection, soft delete, rotation, RBAC on keys, logging |

## Storage and database specifics
- **Storage**: disable public access and shared-key auth where possible; Entra auth; private endpoints; immutability (WORM) for legal hold; Defender for Storage (malware scanning, sensitive-data threat detection).
- **Azure SQL / Cosmos DB / PostgreSQL**: Entra-only auth, private endpoints, auditing to Log Analytics, Defender for databases, vulnerability assessment.
- **Data residency/sovereignty**: region choice, policy to restrict locations, sovereign cloud options.

## Securing AI workloads
Threats: prompt injection, data exfiltration through prompts/responses, model/data poisoning, over-permissioned agents, shadow AI.

| Layer | Controls |
|-------|----------|
| Identity & access | Managed identity, least-privilege RBAC for model endpoints/projects, no shared API keys |
| Network | Private endpoints, disable public network access, egress control |
| Data | Classify/label grounding data; retrieval honours document permissions; DLP/DSPM for AI |
| Content safety | Content filters, prompt shields for jailbreak/indirect injection, groundedness checks |
| Monitoring | Defender for Cloud AI threat protection / AI security posture, logging of prompts and tool calls, Sentinel |
| Governance | Responsible AI standards, model/agent inventory, red teaming, human-in-the-loop for high-impact actions |
| Shadow AI | Defender for Cloud Apps discovery, Purview controls, CA/SSE policies for unsanctioned AI sites |

Reference the **OWASP Top 10 for LLM Applications** and **MITRE ATLAS** for threat modelling. Platform names evolve (for example, Azure AI Foundry is now Microsoft Foundry); check current docs.

## Exam-style takeaways
- "Customer controls the keys, tenant-isolated HSM" → Managed HSM with CMK.
- "Protect data even from DBAs" → Always Encrypted.
- "Prevent sensitive data in prompts" → DLP/DSPM for AI + labels + content safety.
