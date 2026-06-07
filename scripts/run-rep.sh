#!/bin/bash
# REP Orchestrator (stub)
# Usage: ./scripts/run-rep.sh <target-file.md>

set -e

TARGET=${1:-"output/v2/discovery.md"}

echo "=== REP Pipeline Orchestrator ==="
echo "Target input: $TARGET"
echo ""
echo "Recommended execution order:"
echo "  1. discovery.prompt   → discovery.md"
echo "  2. bdd.prompt         → bdd.md          (input: discovery.md)"
echo "  3. domain-rules.prompt → domain-rules.md (input: bdd.md)"
echo "  4. unify-rules.prompt → unify-rules.md  (input: domain-rules.md)"
echo ""
echo "Note: Run each prompt manually with your LLM using the 'use only provided file' constraint."
echo "Future versions will support automatic LLM invocation and versioning."

# Placeholder for future automation
# llm run discovery.prompt --input "$TARGET" --output output/v2/discovery.md
