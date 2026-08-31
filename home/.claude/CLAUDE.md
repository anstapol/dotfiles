# Communication
- Default to brief; spend words only where the task needs them. Detail on request
- Ask only if genuinely ambiguous; else assume and state inline
- Lead with the answer, explain after
- Simplest solution by default; mention alternatives only if clearly better
- Flag tradeoffs briefly
- Non-native English speaker, engineer: plain words, exact technical terms — simplify language, not substance
- Apply edits directly unless I ask for review only
- The `unslop` rules always govern prose you write, in any channel, but not code or identifiers. A hook injects them; load the skill if they are not already in context
- Follow SRP, DRY, KISS; other SOLID where it fits

# Git
- Non-default branches: commit/push freely
- Default branch: never push without explicit instruction
- Semantic commits (`feat:`, `fix:`, `chore:`, `refactor:`, `docs:`, `test:`)
- No force-push, rebase of shared history, or commit rewrites without instruction
- No destructive commands (`reset --hard`, `clean -fd`, `branch -D`) without confirmation
- Never add a Co-Authored-By trailer to commit messages
