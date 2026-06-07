# REP Backlog

## High Priority

- [ ] **Add orchestration script**  
  Create `run-rep.sh` (or Python/Node equivalent) to automatically chain `discovery` → `bdd` → `domain-rules` → `unify-rules` prompts. Support batch mode and output versioning.

- [ ] **Add README.md**  
  Document the full REP pipeline, prompt chain purpose, usage instructions, prerequisites (LLM access), and contribution guidelines.

- [ ] **Enhance prompts for robustness**  
  Add explicit rules for conflict resolution, example outputs, length limits, and handling of ambiguous references in all `.prompt` files.

- [ ] **Standardize as a reusable prompt project**  
  Research existing conventions (e.g., prompt template repos, LLMOps patterns) and adopt a standard structure (e.g., `prompts/`, `templates/`, `examples/`, `schemas/`). Rename/refactor if needed for discoverability.

## Medium Priority

- [ ] **Add validation / review stage**  
  Introduce a final prompt or checklist step for SME validation of generated rules and requirements.

- [ ] **Improve traceability & versioning**  
  Store prompt versions alongside outputs. Add `manifest.json` or metadata tracking input file → prompt → output lineage.

- [ ] **Add eShopOnWeb Dapr fork as submodule**  
  Locate the Dapr-enabled fork of eShopOnWeb and add it as a second submodule (`eshoponweb-dapr/`) for A/B testing of the extraction pipeline across architectural variants.

- [ ] **Add additional complex validation project(s)**  
  Identify 1–2 other non-trivial open-source projects (e.g., large microservices or domain-rich apps) and register them as submodules for cross-project validation of REP prompts.

- [ ] **Support multiple output formats**  
  Extend generation to produce Confluence/Jira-friendly Markdown, PlantUML diagrams, or structured JSON/YAML in addition to current `.md` files.

## Low Priority / Future

- [ ] **Error handling & edge cases**  
  Update prompts to explicitly instruct the LLM on missing references, duplicate detection, and conflict resolution strategies.

- [ ] **Naming consistency cleanup**  
  Align remaining filenames (e.g., `domain-rule.md` → `domain-rules.md`).

- [ ] **Expand domain coverage**  
  Extend prompts to handle additional business domains (e.g., Inventory, Shipping, Payments) when analyzing new codebases.

- [ ] **CI / automation hooks**  
  Add GitHub Actions workflow to run the REP pipeline on new code changes or prompt updates.

## Notes
- All items should respect the "use only provided file + cited references" constraint when executing prompts.
- Maintain plain business English and GWT format in all generated artifacts.
