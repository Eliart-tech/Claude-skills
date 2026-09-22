# claude-skills

Bibliothèque personnelle de skills Claude Code. Un dossier par skill, sous
`.claude/skills/`.

## Skills

| Skill | Rôle | Origine |
|---|---|---|
| `illustrations-xiaohei-fr` | Illustrations d'article en français : 16:9, fond blanc, trait noir manuscrit, annotations rouge/orange/bleu, personnage Xiaohei | Adaptation française de `ian-xiaohei-illustrations` |
| `ian-xiaohei-illustrations` | Même chose pour des articles en chinois | [helloianneo](https://github.com/helloianneo/ian-xiaohei-illustrations), MIT |

## Utiliser les skills

### Sur ce dépôt

Rien à faire. Toute session Claude Code ouverte ici charge `.claude/skills/`
automatiquement.

### Partout sur votre machine

```bash
./install.sh
```

Copie chaque skill dans `~/.claude/skills/`, où Claude Code les trouve quel que
soit le projet.

### Sur votre compte Claude, toutes applications confondues

Compressez le dossier d'un skill et téléversez-le depuis claude.ai :
Réglages → Capacités → Skills → Téléverser.

```bash
cd .claude/skills && zip -r illustrations-xiaohei-fr.zip illustrations-xiaohei-fr
```

## Ajouter un skill

Déposez le dossier du skill dans `.claude/skills/`. Il lui faut un `SKILL.md`
avec un en-tête YAML :

```yaml
---
name: nom-du-skill
description: Ce que fait le skill et quand le déclencher.
---
```

La `description` est ce qui décide du déclenchement : elle doit énumérer les
formulations qui doivent activer le skill, pas résumer élégamment son objet.

## Images de calibration

Les skills d'illustration mentionnent un dossier `assets/examples/`,
volontairement absent d'ici : 14 Mo de PNG que les skills eux-mêmes déconseillent
d'ouvrir par défaut. Pour les ajouter en local :

```bash
git clone https://github.com/helloianneo/ian-xiaohei-illustrations /tmp/ixi
cp -R /tmp/ixi/ian-xiaohei-illustrations/assets/examples \
      .claude/skills/illustrations-xiaohei-fr/assets/
```

## Licences

Les deux skills présents dérivent du travail de Ian (helloianneo), sous licence
MIT. Chaque dossier conserve son `LICENSE` et son `NOTICE.md`.
