# Guida Completa Ninux al Routing a Terra — Edizione 2026

## Panoramica

Questo repository contiene la **Guida Completa Ninux al Routing a Terra**, originariamente pubblicata dalla comunità Ninux come Google Doc collaborativo. Il progetto mira ad aggiornare la guida al 2026, mantenendo piena tracciabilità delle modifiche e attribuzione agli autori originali.

### Documento originale

- **Google Doc**: [Guida Completa Ninux al Routing a Terra](https://docs.google.com/document/d/1tEp4rFNDis4RAwwo4wwg6xDMdqeJKAi8FVYh_FsPEdk/edit)
- **Snapshot originale**: [`docs/originale/guida-originale-v1.md`](docs/originale/guida-originale-v1.md)

## Struttura del repository

```
.
├── README.md                          # Questo file
├── CHANGELOG.md                       # Log delle modifiche sezione per sezione
├── CONTRIBUTORS.md                    # Autori originali e contributori
├── TODO.md                            # Roadmap aggiornamenti per sezione
├── docs/
│   ├── Ground_Routing_HOWTO.md        # Documento di lavoro (versione corrente)
│   └── originale/
│       └── guida-originale-v1.md      # Snapshot originale immutabile
└── images/                            # Screenshot e diagrammi aggiornati
```

## Come contribuire

1. Consultare `TODO.md` per le sezioni che necessitano di aggiornamento
2. Creare un branch con naming convention: `update/<nome-sezione>` (es. `update/openwrt-dsa`)
3. Modificare solo `docs/Ground_Routing_HOWTO.md`
4. Aggiornare `CHANGELOG.md` con le modifiche effettuate
5. Aprire una Pull Request con descrizione delle modifiche

## Principali aree di aggiornamento (2026)

- **OpenWrt**: migrazione da swconfig a DSA (Distributed Switch Architecture), versioni 23.05/24.10
- **Hardware consigliato**: sostituzione dispositivi fuori produzione con alternative attuali
- **RouterOS (MikroTik)**: aggiornamento a RouterOS v7.x con bridge VLAN filtering
- **AirOS (Ubiquiti)**: aggiornamento riferimenti a firmware correnti
- **Protocolli di routing mesh**: valutazione OLSRv2, Babel, oltre a OLSR classico e Batman
- **Strumenti di rete Linux**: sostituzione comandi deprecati (`ifconfig`→`ip`, `brctl`→`ip link`, `vconfig`→`ip link`)
- **EdgeOS/pfSense**: stato attuale delle piattaforme, alternative moderne
- **Sezioni TODO**: completamento delle sezioni lasciate incomplete nell'originale

## Licenza

La guida originale è opera della comunità Ninux. Questo fork di aggiornamento rispetta le stesse condizioni di condivisione della comunità Ninux.
