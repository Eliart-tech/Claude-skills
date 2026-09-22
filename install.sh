#!/usr/bin/env bash
# Copie chaque skill de ce dépôt dans ~/.claude/skills/,
# où Claude Code les charge dans tous les projets.
set -euo pipefail

src="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/.claude/skills"
dest="${CLAUDE_CONFIG_DIR:-$HOME/.claude}/skills"

mkdir -p "$dest"

for skill in "$src"/*/; do
  name="$(basename "$skill")"
  [ -f "$skill/SKILL.md" ] || { echo "ignoré (pas de SKILL.md) : $name"; continue; }
  rm -rf "${dest:?}/$name"
  cp -R "$skill" "$dest/$name"
  echo "installé : $name"
done

echo
echo "Destination : $dest"
echo "Ouvrez une nouvelle session Claude Code pour que les skills soient détectés."
