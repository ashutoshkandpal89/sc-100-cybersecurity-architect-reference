# 04 · Identity & Access

Identity is the primary control plane in Zero Trust.

## Conditional Access (CA) design
**Signals** (user/group, app, device state, location, sign-in/user risk) → **decision** → **controls** (block, MFA, authentication strength, compliant device, terms of use, session controls).

Baseline policy set (adapt to your tenant):
| Policy | Intent |
|--------|--------|
| Require MFA for all users | Baseline; exclude only break-glass |
| Phishing-resistant MFA for admins | Authentication strength (FIDO2, Windows Hello for Business, certificate-based) |
| Block legacy authentication | Remove password-only protocols |
| Risk-based sign-in / user risk | Requires Entra ID P2 / Identity Protection |
| Compliant or hybrid-joined device for sensitive apps | Intune compliance integration |
| Secure registration of security info | Prevent attacker MFA enrolment |
| Session controls via Defender for Cloud Apps | Monitor/restrict downloads in unmanaged sessions |
| Token protection / continuous access evaluation | Reduce token theft/replay window |

Always use **report-only mode** first, and maintain **two emergency-access (break-glass) accounts** excluded from CA and monitored by alerts.

## Privileged access
- **PIM**: eligible (JIT) assignments, approval, MFA on activation, time limits, access reviews, alerts.
- **Enterprise access model**: separate control plane (identity, PKI), management plane, data/workload plane, and user/app access.
- **Secured admin workstations**, separate admin accounts, cloud-only privileged accounts.
- Prefer built-in or custom roles scoped to the narrowest scope (administrative units, resource group).

## Governance
| Need | Capability |
|------|-----------|
| Bundle access for projects/partners | Entitlement management (access packages) |
| Recertify access | Access reviews |
| Joiner/mover/leaver automation | Lifecycle workflows |
| Standing privilege reduction | PIM + access reviews |

## External identities
- **B2B collaboration**: guest users from partner tenants. Control with cross-tenant access settings (inbound/outbound, trust MFA/device claims), allow/deny lists, entitlement management.
- **B2B direct connect**: Teams shared channels without guest objects.
- **Customer identity (CIAM)**: Microsoft Entra External ID for customer-facing apps (Azure AD B2C is no longer available to new customers; check current status).
- Multi-tenant orgs: cross-tenant synchronisation.

## Workload identities
- **Managed identities** (system- or user-assigned) for Azure resources. No secrets to store.
- **Workload identity federation** for GitHub Actions, Kubernetes, external IdPs: no long-lived secrets.
- Apps: prefer certificates/federated credentials over client secrets; review app permissions and consent; enable Conditional Access for workload identities where licensed.

## Hybrid identity
| Option | Use when |
|--------|----------|
| Password hash sync | Simplest, resilient, enables leaked-credential detection |
| Pass-through authentication | Org policy forbids hash sync, still wants cloud auth |
| Federation (AD FS) | Legacy requirements only, highest complexity |
| Cloud Sync vs Connect Sync | Cloud Sync for lightweight/multi-forest; Connect Sync for advanced scenarios |

Protect on-prem too: Defender for Identity sensors on domain controllers for AD attacks.

## Network access as identity-aware (Global Secure Access)
- **Entra Private Access**: replace VPN with per-app, identity-based access to private resources.
- **Entra Internet Access**: secure web gateway with identity-aware policies; includes a profile for Microsoft traffic.
- Pair with CA (compliant network check) to enforce that tenant resources are only reachable via the secure edge.

## Exam-style takeaways
- "Eliminate standing admin access" → PIM.
- "Phishing-resistant for admins" → CA + authentication strength.
- "Partner access with periodic review, least effort" → entitlement management + access reviews.
- "No secrets in code" → managed identity or workload identity federation.
