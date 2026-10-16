# Security Architecture Review Checklist

## Identity
- [ ] MFA and phishing-resistant methods for privileged users
- [ ] PIM for privileged roles; no standing admin
- [ ] Break-glass accounts monitored
- [ ] Workload identities are managed identities or federated

## Network
- [ ] Segmentation and least-privilege rules
- [ ] Private endpoints for PaaS; public access disabled
- [ ] WAF/DDoS for internet-facing apps
- [ ] Egress control and inspection

## Data
- [ ] Data classified and labelled
- [ ] Encryption at rest/in transit; key strategy defined
- [ ] DLP and access reviews in place
- [ ] Backup immutable and recovery tested

## Applications / DevSecOps
- [ ] Threat model completed
- [ ] Secrets not in code or pipeline variables
- [ ] SAST/dependency/secret scanning enabled
- [ ] Image and IaC scanning

## Operations
- [ ] Logs centralised and retained per policy
- [ ] Detections mapped to ATT&CK
- [ ] Automated response for high-volume incidents
- [ ] Incident response plan rehearsed

## Governance
- [ ] Azure Policy/benchmarks applied (MCSB)
- [ ] Compliance mapping and evidence
- [ ] Ownership and review cadence defined
