#!/bin/bash
# Script per inizializzare il repository Git
# Eseguire nella directory del progetto dopo aver clonato/copiato i file

set -e

echo "=== Inizializzazione repo Ninux Ground Routing HOWTO ==="

# Init
git init

# Commit zero: documento originale immutabile
git add docs/originale/guida-originale-v1.md
git commit -m "chore: snapshot documento originale Ninux (pre-2026)

Copia immutabile della Guida Completa Ninux al Routing a Terra
come presente sul Google Doc condiviso dalla comunità Ninux.
Fonte: https://docs.google.com/document/d/1tEp4rFNDis4RAwwo4wwg6xDMdqeJKAi8FVYh_FsPEdk/edit

Autori: comunità Ninux (vedi CONTRIBUTORS.md)"

# Commit 1: scaffold del repository
git add .
git commit -m "chore: scaffold repository per aggiornamento 2026

- README.md con descrizione progetto e istruzioni contribuzione
- CHANGELOG.md con storico versioni
- CONTRIBUTORS.md con attribuzione autori originali
- TODO.md con roadmap dettagliata aggiornamenti per sezione
- docs/Ground_Routing_HOWTO.md come documento di lavoro
- .gitignore"

echo ""
echo "=== Repository inizializzato con 2 commit ==="
echo ""
echo "Prossimi passi:"
echo "  1. Aggiungi il remote:  git remote add origin git@github.com:TUO_USER/ninux-ground-routing-howto.git"
echo "  2. Push iniziale:       git push -u origin main"
echo "  3. Primo aggiornamento: git checkout -b update/comandi-deprecati"
echo ""
