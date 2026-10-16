# SC-100 Microsoft Cybersecurity Architect — Participant Reference

[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
![Last reviewed](https://img.shields.io/badge/last%20reviewed-Oct%202026-blue)

A practical, architect-level companion for people who attended an **SC-100: Microsoft Cybersecurity Architect** class. Use it to revisit concepts, rehearse design decisions, and prepare for the exam.

> Independent, original content under the MIT License. Not affiliated with Microsoft. See [NOTICE.md](NOTICE.md).

## For participants

**Suggested path after class**
1. Read the [study plan](docs/00-study-plan.md) and choose a pace.
2. Re-read the notes for your weakest domain, then do the matching lab or exercise.
3. Attempt each case study on paper before reading the answer.
4. Take the [practice questions](docs/11-practice-questions.md) with the answers covered.
5. Verify everything against Microsoft Learn before the exam or a customer design.

**Prerequisites:** basic Azure and Microsoft 365 familiarity. For labs: a sandbox tenant/subscription, Azure CLI, PowerShell 7+, and optionally Git and VS Code.

**Getting the repo**
```bash
git clone https://github.com/ashutoshkandpal89/sc-100-cybersecurity-architect-reference.git
cd sc-100-cybersecurity-architect-reference
```

**Questions or errors?** Open a GitHub issue using the templates provided.

## How to use this repo

1. Skim [00 - Study plan](docs/00-study-plan.md) and pick a pace.
2. Work through the topic notes (01–08) in order, or jump to a weak area.
3. Practise with [Case studies](docs/09-case-studies.md), [Practice questions](docs/11-practice-questions.md), and the [exercises](exercises/).
4. Keep the [Decision cheat sheet](docs/10-decision-cheatsheet.md) open while designing.
5. Verify details against the official docs in [Resources](docs/12-resources.md).

## Contents

| # | Topic | Focus |
|---|-------|-------|
| 00 | [Study plan](docs/00-study-plan.md) | Exam approach, 4-week plan, scenario method |
| 01 | [MCRA, MCSB & Zero Trust](docs/01-mcra-mcsb-zero-trust.md) | Reference architectures, benchmark, Zero Trust design |
| 02 | [Frameworks & resilience](docs/02-frameworks-resilience.md) | CAF, WAF, landing zones, ransomware resilience |
| 03 | [Security operations](docs/03-security-operations.md) | Sentinel, Defender XDR, SOAR, Security Copilot, posture |
| 04 | [Identity & access](docs/04-identity-access.md) | Entra, Conditional Access, PIM, external & workload identity |
| 05 | [Infrastructure & network](docs/05-infrastructure-network.md) | Defender for Cloud, hybrid/multicloud, endpoints, SSE |
| 06 | [Microsoft 365 security](docs/06-microsoft-365-security.md) | Defender for Office/Cloud Apps, Intune, Purview, Copilot |
| 07 | [Applications & DevSecOps](docs/07-applications-devsecops.md) | App, API, container, supply chain security |
| 08 | [Data & AI security](docs/08-data-ai-security.md) | Purview, encryption, database, AI workload security |
| 09 | [Case studies](docs/09-case-studies.md) | Five original architecture scenarios with worked answers |
| 10 | [Decision cheat sheet](docs/10-decision-cheatsheet.md) | Requirement → service mapping |
| 11 | [Practice questions](docs/11-practice-questions.md) | 20 original scenario questions with rationale |
| 12 | [Resources](docs/12-resources.md) | Official links, learning paths, communities |

Hands-on and templates: [labs/](labs/) (code) · [exercises/](exercises/) (design workshops) · [templates/](templates/)

## Hands-on labs (code)

| Lab | What you do |
|-----|-------------|
| [01 KQL hunting](labs/01-kql-hunting/) | Run identity and activity detection queries |
| [02 Policy baseline](labs/02-policy-baseline/) | Assign and review Azure Policy with Azure CLI |
| [03 Secure storage](labs/03-bicep-secure-storage/) | Deploy a hardened storage account with Bicep |
| [04 Conditional Access report](labs/04-graph-conditional-access-report/) | Read-only CA inventory with PowerShell + Graph |
| [05 GitHub OIDC to Azure](labs/05-github-oidc-to-azure/) | Secretless pipeline authentication |

Use a **sandbox tenant/subscription**, follow each lab's cleanup, and read [labs/README.md](labs/README.md) first.

## Important note on currency

Microsoft refreshes both the products and the SC-100 skills outline periodically (the exam was updated several times in 2025–2026). Names change (for example, Sentinel's move into the Defender portal, Azure AI Foundry → Microsoft Foundry). When a note here conflicts with Microsoft Learn, **Microsoft Learn wins**.

## Author

Maintained by **Ashutosh Kandpal** — Microsoft Certified Trainer.
[LinkedIn](https://www.linkedin.com/in/ashutoshkandpal/) · [Website](https://ashutoshkandpal.com) · [GitHub](https://github.com/ashutoshkandpal89)

If this helped, a ⭐ is appreciated. ## Contributing

Corrections, new labs, and clearer explanations are welcome. Read [CONTRIBUTING.md](CONTRIBUTING.md) and the [Code of Conduct](CODE_OF_CONDUCT.md). Short version: write in your own words, never paste Microsoft docs or real exam questions, keep labs safe and low-cost, and open a focused PR. Security concerns about the labs: see [SECURITY.md](SECURITY.md).
