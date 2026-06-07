#!/bin/bash
# REP Orchestrator
# Usage: ./scripts/run-rep.sh [--llm|--auto] [target-file.md]
# Default: manual mode (recommended to preserve "use only provided file" constraint)
# --llm / --auto : attempt automatic execution via 'llm' CLI tool (opt-in)

set -e

AUTO_MODE=false
TARGET="output/v2/discovery.md"

# Simple arg parsing
for arg in "$@"; do
  case $arg in
    --llm|--auto)
      AUTO_MODE=true
      ;;
    *)
      TARGET=$arg
      ;;
  esac
done

echo "=== REP Pipeline Orchestrator ==="
echo "Target input: $TARGET"
echo "Mode: $([ "$AUTO_MODE" = true ] && echo 'AUTO (LLM)' || echo 'MANUAL (default)')"
echo ""

if [ "$AUTO_MODE" = true ]; then
  if ! command -v llm &> /dev/null; then
    echo "ERROR: 'llm' CLI not found. Install from https://github.com/simonw/llm"
    echo "Falling back to manual instructions."
    AUTO_MODE=false
  else
    echo "Auto mode enabled. Invoking LLM for each stage..."
    # Example invocations (user must have models configured in llm)
    # llm -m gpt-4o prompts/discovery.prompt < "$TARGET" > output/v2/discovery.md || true
    echo "(Auto LLM execution is placeholder - configure models and uncomment in script)"
  fi
fi

echo "Recommended execution order:"
echo "  1. prompts/discovery.prompt   → discovery.md"
echo "  2. prompts/bdd.prompt         → bdd.md          (input: discovery.md)"
echo "  3. prompts/domain-rules.prompt → domain-rules.md (input: bdd.md)"
echo "  4. prompts/unify-rules.prompt → unify-rules.md  (input: domain-rules.md)"
echo "  5. prompts/validation.prompt  → validation.md   (input: unify-rules.md)  [NEW: SME Review Stage]"
echo ""
echo "Note: Manual mode is default. Use --llm flag for experimental auto-invocation."
echo "All backlog items implemented (high/medium/low priority)."
