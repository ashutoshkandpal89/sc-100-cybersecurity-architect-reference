# Contributing

Thanks for helping keep this reference accurate and useful.

## What we welcome
- Fixes for outdated features, product renames, wrong details, or broken links
- Clearer explanations and diagrams
- New original case studies, practice questions, or labs
- Translations (open an issue first)

## What we do not accept
- Copied Microsoft Learn text, official course slides/labs, or books
- **Real or recalled exam questions** (exam dumps) of any kind
- Content that requires production access or can cause harm or surprise cost without clear warnings
- Malware, exploit code, or offensive tooling

## How to contribute
1. Open an issue (use a template) or comment on an existing one.
2. Fork the repo and create a branch: `fix/<topic>` or `feat/<topic>`.
3. Make a **small, focused change**. Prefer targeted edits over rewrites.
4. Complete the PR checklist.
5. A maintainer reviews. Expect questions; accuracy matters more than speed.

## Style guide
- Own words, concise, architect-level: requirement → design → trade-off.
- Use tables and short lists; keep notes skimmable.
- File names: `NN-topic.md` for notes, kebab-case for folders.
- Link to official docs rather than copying them. Prefer stable `learn.microsoft.com` URLs.
- Product names in their current form; mention renames when helpful.
- Mark time-sensitive claims ("check current docs").

## Lab guidelines
- Include: goal, prerequisites/permissions, steps, expected outcome, discussion questions, **cleanup**.
- Use least privilege and read-only operations where possible.
- No secrets, tenant IDs, subscription IDs, or real emails in files. Use placeholders such as `<your-tenant-id>`.
- Pin or note tool versions; scripts must be safe to read top to bottom (`set -euo pipefail` for bash).
- State likely cost and how to delete resources.
- Test in a sandbox before submitting and say what you tested.

## Sign-off and licence
By submitting a contribution you confirm it is your own work (or properly permitted) and agree it is released under the [MIT License](LICENSE).

## Conduct
Be respectful. See [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md).
