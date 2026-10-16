# 11 · Practice Questions (Original)

Original scenario questions for learning. They are not exam content. Answers are at the end of each question; cover them first.

**1.** A company must ensure admins never hold standing Global Administrator rights but can activate when needed with approval.
<details><summary>Answer</summary>Use Privileged Identity Management with eligible assignments, approval, MFA on activation, and access reviews.</details>

**2.** You need one console to investigate a phishing email, the compromised device, and the sign-in that followed.
<details><summary>Answer</summary>Defender XDR correlates these into one incident.</details>

**3.** A SOC wants logs from AWS, on-prem firewalls, and Entra with custom detection logic and automated response.
<details><summary>Answer</summary>Microsoft Sentinel with connectors, analytics rules, and automation.</details>

**4.** Backups must survive an attacker with global admin rights in the production subscription.
<details><summary>Answer</summary>Place the vault in a separate subscription/tenant with immutability, soft delete, and Resource Guard (multi-user authorisation).</details>

**5.** Developers deploy from GitHub Actions to Azure using a stored client secret. Reduce risk.
<details><summary>Answer</summary>Workload identity federation (OIDC) with a federated credential; remove the secret.</details>

**6.** An Azure SQL database must be unreachable from the public internet.
<details><summary>Answer</summary>Private Endpoint, Private DNS, and public network access disabled.</details>

**7.** You need to see attack paths from internet-exposed VMs to a storage account containing sensitive data, without installing agents.
<details><summary>Answer</summary>Defender CSPM (attack path analysis, agentless scanning).</details>

**8.** Executives want to block file downloads of Confidential documents on unmanaged devices.
<details><summary>Answer</summary>Sensitivity labels plus Conditional Access App Control session policy via Defender for Cloud Apps.</details>

**9.** The org must use customer-managed keys in a dedicated, tenant-isolated HSM.
<details><summary>Answer</summary>Azure Key Vault Managed HSM.</details>

**10.** Admins need phishing-resistant authentication only for privileged roles.
<details><summary>Answer</summary>Conditional Access policy targeting directory roles with an authentication strength requiring FIDO2/Windows Hello for Business/certificate-based auth.</details>

**11.** A partner's 200 users need access to a SharePoint project for six months, with automatic expiry.
<details><summary>Answer</summary>Entitlement management access package with expiration and access reviews.</details>

**12.** Servers in an on-prem datacentre and Google Cloud need vulnerability assessment and EDR.
<details><summary>Answer</summary>Azure Arc / GCP connector with Defender for Servers (integrated with Defender for Endpoint).</details>

**13.** Outbound traffic must be TLS-inspected and filtered by FQDN and threat intelligence.
<details><summary>Answer</summary>Azure Firewall Premium.</details>

**14.** A bank wants to deploy Microsoft 365 Copilot but fears it will surface HR files.
<details><summary>Answer</summary>Fix oversharing and permissions, apply sensitivity labels with encryption, add DLP, monitor via DSPM/audit, pilot first.</details>

**15.** You must discover which generative AI websites employees use, and block unsanctioned ones.
<details><summary>Answer</summary>Defender for Cloud Apps discovery and unsanctioning, enforced via Defender for Endpoint/secure web gateway controls.</details>

**16.** A Logic Apps playbook needs to disable a user. How should it authenticate?
<details><summary>Answer</summary>Managed identity with only the required Graph permission.</details>

**17.** Log ingestion cost is high for verbose firewall logs that are rarely queried but must be kept 2 years.
<details><summary>Answer</summary>Use lower-cost log tiers, ingestion-time filtering/transformation, and long-term retention.</details>

**18.** An AKS cluster must only run images from an approved registry.
<details><summary>Answer</summary>Azure Policy for Kubernetes (admission control) with an allowed-registry policy; add image signing/scanning.</details>

**19.** A public API leaks other customers' records when IDs are changed in the URL.
<details><summary>Answer</summary>Broken object-level authorisation. Fix in application authorisation logic; add APIM validation, tests, and Defender for APIs monitoring.</details>

**20.** A leadership dashboard asks: "Are we improving?" for Microsoft 365 security.
<details><summary>Answer</summary>Track Secure Score trend plus prioritised improvement actions, tied to risk, not score alone.</details>
