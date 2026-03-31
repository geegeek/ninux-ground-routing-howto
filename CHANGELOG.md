# Changelog

Tutte le modifiche significative alla guida vengono documentate in questo file.
Il formato è basato su [Keep a Changelog](https://keepachangelog.com/it/1.1.0/).

## [Unreleased]

### Modificato
- **Sezione Requisiti**: aggiornato il testo che menzionava il pacchetto `vlan` e l'utility `vconfig`; ora spiega che `iproute2` è già presente di default su tutte le distro moderne e sostituisce sia `vconfig` che `ifconfig` (pacchetto `net-tools`, anch'esso deprecato).
- **Sezione AirOS (Ubiquiti)**: sostituiti tutti i comandi `ifconfig` con `ip link set` / `ip addr add` / `ip addr flush`; sostituito `vconfig add` con `ip link add ... type vlan id`.
- **Sezione OpenWRT LuCI — Preparazione**: sostituiti `ifconfig eth0 up` e `ifconfig eth0 up 192.168.1.2/24` con `ip link set eth0 up` e `ip addr add 192.168.1.2/24 dev eth0`.
- **Sezione Linux Box**: sostituito `brctrl addbr` / `brctrl addif` (che era anche un errore di battitura rispetto a `brctl`) con `ip link add name brX type bridge` / `ip link set ethX master brX`.

### Da fare
- Vedere `TODO.md` per la roadmap completa degli aggiornamenti

## [v1.0.0] — 2014~2016 (stimata) — Versione originale

### Documento originale
- Guida completa al routing a terra per nodi Ninux
- Sezioni per AirOS (Ubiquiti), RouterOS (MikroTik), OpenWRT (LuCI), Linux Box, EdgeOS, pfSense
- Configurazione OLSR, policy routing, firewalling, troubleshooting
- Basata su: OpenWRT 12.09 Attitude Adjustment / 14.07 Barrier Breaker, AirOS ≤5.5.2, RouterOS v6.x, EdgeOS 1.6–1.10, pfSense 2.1.3

### Autori originali
- Vedere `CONTRIBUTORS.md` per l'elenco dei contributori della comunità Ninux

### Snapshot
- [`docs/originale/guida-originale-v1.md`](docs/originale/guida-originale-v1.md)

## [v2.0.0-wip] — 2026 — Aggiornamento in corso

### Pianificato
- Migrazione OpenWrt da swconfig a DSA (Distributed Switch Architecture)
- Aggiornamento RouterOS v6 → v7 (bridge VLAN filtering)
- Sostituzione comandi deprecati (ifconfig→ip, brctl→ip link, vconfig→ip link)
- Aggiornamento tabella hardware consigliato
- Completamento sezioni TODO (OpenWRT radio, Batman, CLI/UCI, FAQ, Riferimenti)
- Valutazione stato EdgeOS e pfSense, possibili alternative moderne
- Nuovi screenshot per tutte le sezioni
