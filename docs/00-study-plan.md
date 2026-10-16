# 00 · Study Plan & Architect Mindset

## What SC-100 really tests
Not portal clicks. It tests whether you can **design, recommend, evaluate, and specify requirements** for security across identity, devices, data, AI, applications, network, infrastructure, and DevOps, using Microsoft technologies and Zero Trust principles.

Always confirm the current skills outline, duration, question count, and price on the [official exam page](https://learn.microsoft.com/credentials/certifications/exams/sc-100/) and [study guide](https://learn.microsoft.com/credentials/certifications/resources/study-guides/sc-100).

> The **Cybersecurity Architect Expert** credential needs SC-100 plus one qualifying security exam. Confirm the current qualifying list on Microsoft Learn.

## The scenario method (use on every question)
1. **Extract requirements**: what must be true? (compliance, RTO/RPO, least admin effort, cost, hybrid, multicloud)
2. **Extract constraints**: existing licences, regions, legacy apps, tenants, team skills.
3. **Identify the layer**: identity, endpoint, network, data, app, operations, governance.
4. **Pick the native service that meets the requirement with the least added complexity.**
5. **Read the trade-off words**: "most secure", "least administrative effort", "minimise cost", "without agents", "near real time".
6. **Validate against Zero Trust**: verified explicitly? least privilege? assume breach?

## Four-week post-class plan
| Week | Focus | Output |
|------|-------|--------|
| 1 | Notes 01, 02, 03 | Redraw an MCRA-style diagram from memory; write a ransomware resilience plan |
| 2 | Notes 04, 05 | Design a Conditional Access baseline and privileged access model; hybrid/multicloud posture design |
| 3 | Notes 06, 07, 08 | Purview label/DLP strategy; DevSecOps pipeline controls; AI workload threat model |
| 4 | Case studies, practice questions | Re-answer weak topics; fill gaps in the cheat sheet |

## Study habits that work
- Draw before you read: sketch the architecture, then compare with the docs.
- Teach one topic per day to a colleague.
- Keep a "why not the other option?" log. Most wrong answers are plausible-but-heavier services.
- Complete the official Microsoft Learn paths and the free practice assessment ([Resources](12-resources.md)).
- Build a small lab tenant for hands-on familiarity (Entra, Defender, Purview trials where available).
