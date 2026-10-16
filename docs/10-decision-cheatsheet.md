# 10 · Decision Cheat Sheet

| If the requirement says… | Think… |
|---------------------------|--------|
| Single view of incidents across endpoint, identity, email, SaaS | Defender XDR |
| Collect logs from multicloud/on-prem/third-party, custom detections, SOAR | Sentinel |
| Automate a simple response (tag, assign, close) | Sentinel automation rule |
| Complex multi-system response | Playbook (Logic Apps) |
| Measure M365 security posture | Secure Score |
| Measure cloud workload posture/compliance | Defender for Cloud + MCSB |
| Attack paths, agentless scanning | Defender CSPM |
| Protect servers incl. non-Azure | Arc + Defender for Servers |
| Secure admin access, JIT | PIM |
| Phishing-resistant MFA | CA authentication strength (FIDO2/WHfB/CBA) |
| Block risky sign-ins automatically | Identity Protection + CA (P2) |
| Partner/guest lifecycle | Entitlement management + access reviews |
| Cross-tenant trust | Cross-tenant access settings |
| No secrets for Azure resources | Managed identity |
| No secrets for CI/CD | Workload identity federation (OIDC) |
| VPN replacement | Entra Private Access |
| Secure web gateway | Entra Internet Access |
| L7 web attack protection | WAF |
| Inspect/filter outbound, TLS inspection | Azure Firewall Premium |
| PaaS private access | Private Endpoint + Private DNS |
| Admin VM access without public IP | Bastion / JIT |
| Discover shadow IT/AI | Defender for Cloud Apps |
| Restrict download on unmanaged device | CA App Control (session policy) |
| Classify and encrypt documents | Purview sensitivity labels |
| Stop sensitive data leaving | Purview DLP |
| Detect risky insider behaviour | Insider Risk Management |
| Customer-managed keys, dedicated HSM | Managed HSM |
| Hide data from DBAs | Always Encrypted |
| Ransomware-proof backups | Immutable vault + Resource Guard + soft delete |
| Pipeline secret exposure | Secret scanning + push protection |
| API visibility/threats | Defender for APIs + APIM |
| Container admission control | Azure Policy for Kubernetes |
| Governance at scale | Management groups + Azure Policy |

## Trade-off keywords
| Phrase | Lean toward |
|--------|-------------|
| "Least administrative effort" | Built-in/native, preset, automatic |
| "Most secure" | Phishing-resistant, private, isolated, immutable |
| "Minimise cost" | Right-size plans, tiering, avoid duplicate tools |
| "Without deploying agents" | Agentless scanning, API connectors |
| "Near real time" | NRT rules, streaming, automatic disruption |
