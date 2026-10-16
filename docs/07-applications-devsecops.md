# 07 · Applications, APIs & DevSecOps

## Secure development lifecycle
| Stage | Controls |
|-------|----------|
| Plan/Design | Threat modelling (e.g. STRIDE), security requirements, abuse cases |
| Code | Peer review, secret scanning, SAST, pre-commit hooks |
| Build | Dependency scanning, SBOM, signed artifacts, hardened runners |
| Test | DAST, IaC scanning, container image scanning |
| Release | Approval gates, environment protection, policy as code |
| Operate | Runtime protection, logging, vulnerability management, incident response |

## Pipeline & supply chain
- **GitHub Advanced Security / Azure DevOps security**: code scanning, secret scanning with push protection, dependency review/Dependabot.
- **Defender for Cloud DevOps security**: connects GitHub/ADO/GitLab for posture and code-to-cloud mapping.
- Workload identity federation (OIDC) from pipelines to Azure: no stored secrets.
- Branch protection, required reviews, least-privilege tokens, pinned action/task versions.
- Frameworks to reference: SLSA, OpenSSF Scorecard, NIST SSDF.

## Identity for apps
- App registrations vs enterprise apps; admin consent workflow; limit delegated/application permissions.
- Managed identities for Azure-hosted apps; Key Vault for the secrets that remain (RBAC mode, soft delete, purge protection).
- OAuth 2.0/OIDC flows: use auth code + PKCE for public clients; avoid implicit flow.

## API security
| Control | Tool |
|---------|------|
| Gateway: auth, rate limit, validation, IP filter | Azure API Management |
| L7 protection | WAF (Front Door / App Gateway) |
| Discovery and threat detection | Defender for APIs (via APIM) |
| AuthN/Z | Entra ID with OAuth scopes/app roles; validate-jwt policy |
| Private access | Internal/private APIM + private endpoints |

OWASP API Security Top 10 is a good checklist: broken object-level authorisation, broken authentication, excessive data exposure, lack of rate limiting.

## Containers & Kubernetes (AKS)
- Entra integration + Kubernetes RBAC, disable local accounts.
- Private cluster/API server restrictions; network policies; Azure Policy for Kubernetes (admission control).
- Image scanning in registry (Defender for Containers), signed images, minimal base images.
- Runtime threat detection; separate node pools for sensitive workloads; secrets via CSI driver + Key Vault.

## App Service / serverless
- Managed identity, private endpoints/VNet integration, TLS-only, disable basic auth/FTP, access restrictions, Defender for App Service.

## Exam-style takeaways
- "Deployment pipeline needs Azure access without secrets" → OIDC workload identity federation.
- "Detect exposed secrets in repos" → secret scanning + push protection.
- "Visibility of unmanaged APIs" → Defender for APIs / API Management onboarding.
