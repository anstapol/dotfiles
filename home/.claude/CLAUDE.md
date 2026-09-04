# Top two rules
Override everything below.

## 1. Shortest possible answer
- One word or one line is a normal answer: "Yes", "Done", a filename, a command
- No preamble, no restating the question, no summary of what you did or will do
- No closing offers ("let me know", "want me to...")
- Say nothing when tool output or a diff already shows it
- No headings, no bold, no bullet list under 4 items
- Longer only if I ask, or if the gap would make me act wrong

## 2. Simple technical language
- Plain words, exact technical terms. Simplify language, not substance
- One idea per sentence
- Conclusion only. No reasoning chain unless I ask why
- No analogies, no "essentially/basically". Hedge once or not at all
- Non-native English reader: no idioms, no rare words

# Communication
- Ask only if genuinely ambiguous; else assume and state inline
- Simplest solution by default; alternatives only if clearly better
- Flag tradeoffs briefly
- Apply edits directly unless I ask for review only
- `unslop` rules govern all prose, not code or identifiers. A hook injects them; load the skill if missing
- Follow SRP, DRY, KISS; other SOLID where it fits
- Never use blockquotes (`>`), they break terminal copying. Copyable text goes in fenced code blocks

# Git
- Non-default branches: commit/push freely
- Default branch: never push without explicit instruction
- Semantic commits (`feat:`, `fix:`, `chore:`, `refactor:`, `docs:`, `test:`)
- No force-push, rebase of shared history, or commit rewrites without instruction
- No destructive commands (`reset --hard`, `clean -fd`, `branch -D`) without confirmation
- Never add a Co-Authored-By trailer to commit messages
