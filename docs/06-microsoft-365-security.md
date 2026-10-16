# 06 · Securing Microsoft 365

## Component map
| Need | Service |
|------|---------|
| Email/collaboration threat protection | **Defender for Office 365** (P1: Safe Links/Attachments, anti-phish; P2 adds investigation, AIR, attack simulation) |
| SaaS visibility and control (CASB) | **Defender for Cloud Apps**: discovery, app governance, session/access policies via Conditional Access App Control, SaaS posture |
| Device management & compliance | **Intune** |
| Data classification, protection, compliance | **Microsoft Purview** |
| Cross-domain detection | **Defender XDR** |

## Defender for Office 365 design
- Preset security policies (Standard/Strict) as baseline; tune with exceptions rarely.
- Safe Links/Attachments for Teams, SharePoint, OneDrive; ZAP; impersonation protection.
- Email authentication: SPF, DKIM, DMARC alignment.
- Attack simulation and user training as people controls.

## Defender for Cloud Apps design
- **Cloud discovery** to find shadow IT (including shadow AI apps); score and sanction/unsanction.
- **App governance** for OAuth app risk (over-permissioned, risky publisher).
- **Session policies** with Conditional Access App Control: block download of labelled data on unmanaged devices, require step-up.
- Connect sanctioned apps via API connectors for DLP and threat detection.

## Intune
- Enrol: corporate devices (MDM) vs BYOD (MAM/app protection, no full enrolment).
- Compliance policy feeds Conditional Access ("require compliant device").
- Security baselines and endpoint security policies for consistent hardening.
- Separate admin roles with RBAC and scope tags.

## Purview data security (M365)
| Capability | Use |
|-----------|-----|
| Sensitivity labels | Classify and protect (encryption, markings, container labels for Teams/Sites) |
| DLP | Block/warn on sharing sensitive data across Exchange, SharePoint, OneDrive, Teams, endpoints, browsers |
| Insider Risk Management | Detect risky departures, exfiltration patterns (privacy-aware) |
| Communication Compliance | Policy-based monitoring of communications |
| Retention / records | Keep or delete to meet regulation |
| eDiscovery, Audit | Investigations and evidence |
| Compliance Manager | Assessments and improvement actions |
| DSPM | Posture across data and AI activity |

Label strategy: keep it **small** (4–5 top-level labels), publish by audience, start in recommend/test, then automate (auto-labelling) once accuracy is proven.

## Copilot for Microsoft 365 data security
Copilot respects existing permissions, so **oversharing is the main risk**.
1. Fix permissions: review broad SharePoint/Teams access; use site access reviews and SharePoint Advanced Management features where licensed.
2. Classify: sensitivity labels with encryption; Copilot honours usage rights.
3. Protect: DLP policies for Copilot interactions where supported; restrict specific sites from Copilot processing if needed.
4. Monitor: audit and DSPM for AI activity; Insider Risk and Communication Compliance as applicable.
5. Govern third-party and agent access (app governance, consent policies).

Verify supported capabilities and licensing in Microsoft Learn; feature scope changes quickly.

## Exam-style takeaways
- "Stop users downloading labelled files on unmanaged devices" → CA App Control session policy + labels.
- "Discover unsanctioned apps" → Defender for Cloud Apps cloud discovery.
- "Copilot exposing sensitive files" → fix oversharing, labels, DLP, monitoring (not 'turn Copilot off').
