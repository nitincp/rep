# REP — Requirements Extraction Pipeline

REP is a prompt-driven workflow for extracting business rules, BDD scenarios, domain rules, and requirements from existing codebases using LLMs.

## Prompt Chain

1. **discovery.prompt** — High-level Business Discovery Document (plain English, grouped by domain)
2. **bdd.prompt** — Given-When-Then scenarios in business language
3. **domain-rules.prompt** — Consolidated, deduplicated domain rules
4. **unify-rules.prompt** — Final organized requirements with cross-domain connections

All stages enforce:
- Plain business English (no code/technical terms in outputs)
- Given-When-Then format where appropriate
- Explicit citations to source files/functions
- "Use only the provided file + cited references" constraint

## Usage

```bash
# Run individual stages manually
# 1. Start with discovery on a target file
# 2. Feed discovery.md into bdd.prompt
# 3. Continue the chain...

# Or use the orchestrator (future)
./scripts/run-rep.sh path/to/target.md
```

## Project Structure

```
REP/
├── *.prompt              # The four core prompts
├── README.md
├── BACKLOG.md
├── scripts/              # Orchestration helpers (WIP)
├── output/
│   ├── v1/
│   └── v2/               # Versioned extraction results
├── eshoponweb/           # Target codebase (submodule)
└── .gitmodules
```

## Standardization

REP follows emerging LLMOps / prompt-engineering conventions:
- Short, focused `.prompt` files
- Clear input/output contracts
- Progressive refinement pipeline
- Traceable references at every layer

Future standardization work is tracked in `BACKLOG.md`.

## Contributing

See `BACKLOG.md` for prioritized improvements.

## License

MIT (or project-specific — TBD)
