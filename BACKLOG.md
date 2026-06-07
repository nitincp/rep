# REP Backlog

## High Priority

- [x] **Add orchestration script**  
  Create `run-rep.sh` (or Python/Node equivalent) to automatically chain `discovery` → `bdd` → `domain-rules` → `unify-rules` prompts. Support batch mode and output versioning.

- [x] **Add README.md**  
  Document the full REP pipeline, prompt chain purpose, usage instructions, prerequisites (LLM access), and contribution guidelines.

- [x] **Enhance prompts for robustness**  
  Add explicit rules for conflict resolution, example outputs, length limits, and handling of ambiguous references in all `.prompt` files.

- [x] **Standardize as a reusable prompt project**  
  Research existing conventions (e.g., prompt template repos, LLMOps patterns) and adopt a standard structure (e.g., `prompts/`, `templates/`, `examples/`, `schemas/`). Rename/refactor if needed for discoverability.

## Medium Priority

- [x] **Add validation / review stage**  
  Introduce a final prompt or checklist step for SME validation of generated rules and requirements. (Implemented: prompts/validation.prompt + updates to chain)

- [x] **Improve traceability & versioning**  
  Store prompt versions alongside outputs. Add `manifest.json` or metadata tracking input file → prompt → output lineage. (Implemented: output/v2/manifest.json + pipeline_version tracking)

- [ ] **Add eShopOnWeb Dapr fork as submodule**  
  Locate the Dapr-enabled fork of eShopOnWeb and add it as a second submodule (`eshoponweb-dapr/`) for A/B testing of the extraction pipeline across architectural variants. (Research: No public Dapr fork found via GitHub search; deferring)

- [ ] **Add additional complex validation project(s)**  
  Identify 1–2 other non-trivial open-source projects (e.g., large microservices or domain-rich apps) and register them as submodules for cross-project validation of REP prompts. (Future work)

- [x] **Support multiple output formats**  
  Extend generation to produce Confluence/Jira-friendly Markdown, PlantUML diagrams, or structured JSON/YAML in addition to current `.md` files. (Implemented: instructions added to unify-rules.prompt)

- [x] **Add optional LLM invocation to run-rep.sh**  
  Add an opt-in `--auto` / `--llm` flag that invokes an LLM CLI (e.g. `llm` tool) to execute the prompt chain automatically. Keep manual mode as default to preserve the "use only provided file" constraint. (Implemented: flag parsing + placeholder execution)

## Low Priority / Future

- [x] **Error handling & edge cases**  
  Update prompts to explicitly instruct the LLM on missing references, duplicate detection, and conflict resolution strategies. (Completed: added explicit sections to discovery.prompt, domain-rules.prompt, unify-rules.prompt, validation.prompt)

- [x] **Naming consistency cleanup**  
  Align remaining filenames (e.g., `domain-rule.md` → `domain-rules.md`). (Completed: renamed output/v2/domain-rule.md + updated manifest)

- [x] **Expand domain coverage**  
  Extend prompts to handle additional business domains (e.g., Inventory, Shipping, Payments) when analyzing new codebases. (Completed: updated discovery.prompt + domain-rules.prompt to generically instruct scanning for supporting domains when present)

- [x] **CI / automation hooks**  
  Add GitHub Actions workflow to run the REP pipeline on new code changes or prompt updates. (Completed: .github/workflows/rep-pipeline.yml with prompt validation + naming checks)

## Notes
- All items should respect the "use only provided file + cited references" constraint when executing prompts.
- Maintain plain business English and GWT format in all generated artifacts.

## Completed (2026-06-08)
- Medium priority: validation stage, traceability/manifest, multi-format support, LLM flag (merged from feature/implement-medium-priority)
- Low priority: error/edge handling in prompts, naming cleanup (domain-rules.md), domain coverage expansion, CI workflow (on feature/implement-low-priority)
Dapr submodule deferred (no public forks). High priority pre-completed.
