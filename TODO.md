# TODO — Roadmap aggiornamento al 2026

Legenda priorità:
- 🔴 **Critico** — Contenuto obsoleto/errato, da aggiornare prima di pubblicare
- 🟡 **Importante** — Contenuto datato ma ancora parzialmente funzionale
- 🟢 **Cosmetico** — Miglioramenti, completamenti, modernizzazioni minori
- 🆕 **Nuovo** — Sezione da scrivere ex novo

---

## Sezione 1: Prefazione
- [ ] 🟢 Aggiornare il tono per indicare che si tratta di una revisione 2026 della guida originale

## Sezione 2: Introduzione
- [ ] 🟡 Storicizzare i riferimenti a Sburratone e Scooreggione (sono storia, non più la situazione corrente)
- [ ] 🟡 Aggiornare il riferimento a OpenWRT 12.09 Attitude Adjustment → OpenWrt 23.05 Langur / 24.10
- [ ] 🟢 Nota sul rebranding: "OpenWRT" → "OpenWrt" (minuscola dalla 18.06 in poi)

## Sezione 3: Principi di funzionamento (Bridge + VLAN)
- [ ] 🟢 I concetti sono ancora validi — nessuna modifica strutturale necessaria
- [ ] 🟢 Completare i `[TODO]` con box tecnici più approfonditi
- [ ] 🟢 Correggere "801.2Q" → "802.1Q" nella didascalia dell'immagine

## Sezione 4: Vantaggi del routing a terra
- [ ] 🟢 Contenuto concettualmente valido, nessuna modifica necessaria
- [ ] 🟢 Aggiornare/sostituire l'immagine di architettura (attualmente vuota/rotta)

## Sezione 5: Requisiti
- [x] 🔴 **`vconfig` è deprecato** — sostituire con `ip link add ... type vlan id ...` (iproute2)
- [x] 🔴 **`ifconfig` è deprecato** — sostituire con `ip addr` / `ip link` in tutta la guida
- [ ] 🟡 Aggiornare requisiti hardware ground router (specifiche minime 2026)
- [ ] 🟡 Rimuovere riferimento a LiveCD/LiveUSB (ormai marginale come approccio)
- [ ] 🟡 "Disabilitare Network Manager" → aggiungere alternativa con `nmcli` per chi preferisce tenerlo attivo
- [ ] 🟢 Nota su USB-to-Ethernet: meno problematico nel 2026 con driver maturi

## Sezione 6: Configurazione Radio — AirOS (Ubiquiti)
- [ ] 🔴 AirOS è cambiato significativamente (v8.x+). Verificare se la procedura VLAN/bridge è ancora identica
- [x] 🔴 Sostituire comandi `ifconfig` e `vconfig` con equivalenti `ip`
- [ ] 🟡 Aggiungere nota su Ubiquiti AirMax AC / airMAX 60GHz e relative differenze di interfaccia
- [ ] 🟡 Le immagini AirOS sono tutte vuote/rotte — servono nuovi screenshot
- [ ] 🆕 Considerare aggiunta sezione per UISP / UniFi (se rilevanti per nodi Ninux)

## Sezione 7: Configurazione Radio — RouterOS (MikroTik)
- [ ] 🔴 **"Master Port" è stato rimosso in RouterOS v7** — sostituire con bridge VLAN filtering
- [ ] 🔴 Winbox 3.x è la versione corrente — aggiornare link download e procedura
- [ ] 🔴 RouterOS v7 ha cambiato radicalmente la gestione VLAN (bridge vlan-filtering=yes)
- [ ] 🟡 Aggiornare screenshot (quelli attuali sono vuoti/rotti)
- [ ] 🟡 Aggiungere opzione WebFig come alternativa a Winbox per utenti Linux

## Sezione 8: Configurazione Radio — OpenWRT
- [ ] 🆕 **Sezione ancora `TODO`** — scrivere ex novo per OpenWrt 23.05+
- [ ] 🟡 Sottosezione Adhoc/Client Mode: trelay è ancora lo strumento corretto? Verificare alternative

## Sezione 9: Ground Router — OpenWRT (LuCI)
- [ ] 🔴 **CAMBIAMENTO CRITICO: swconfig → DSA** (Distributed Switch Architecture) da OpenWrt 21.02+
  - L'intera logica di configurazione switch/VLAN in LuCI è cambiata
  - Non esiste più la pagina "Network > Switch"
  - Le VLAN si configurano tramite bridge VLAN filtering in "Network > Interfaces"
  - Il concetto di "porta logica vs fisica" è gestito diversamente
- [ ] 🔴 **Tabella hardware completamente obsoleta** — tutti i dispositivi elencati sono fuori produzione o con specifiche inadeguate
  - Creare nuova tabella con dispositivi 2024-2026 (es. GL.iNet GL-MT6000, TP-Link Archer C6v4, Xiaomi AX3000T, BananaPi BPI-R3/R4)
  - Verificare supporto DSA e assenza bug VLAN per ciascuno
- [ ] 🔴 Sezione "Cosa c'è da sapere sugli switch" va riscritta per DSA
- [ ] 🟡 Sezione "Precauzioni" (backdoor WAN): concetto valido, aggiornare procedura per DSA
- [ ] 🟡 Sezione "Creazione VLAN": riscrivere completamente per interfaccia LuCI con DSA
- [ ] 🟡 Sezione "Creazione Network OpenWRT": verificare se la procedura è sostanzialmente invariata con DSA
- [ ] 🟡 Sezione "Routing: OLSR": pacchetti olsrd sono ancora nei feed OpenWrt? Verificare
- [ ] 🟡 Sezione "Firewalling": fw3 → fw4 (nftables) da OpenWrt 22.03+
- [ ] 🆕 Sezione "Routing: Batman" — ancora `TODO`, scrivere almeno una guida base

## Sezione 10: Ground Router — OpenWRT (CLI/UCI)
- [ ] 🆕 **Sezione ancora `TODO`** — scrivere ex novo con comandi UCI per DSA

## Sezione 11: Ground Router — Linux Box
- [x] 🔴 **`brctl` è deprecato** — sostituire con `ip link add type bridge` / `bridge vlan`
- [x] 🔴 Sostituire `ifconfig` con `ip addr` / `ip link`
- [ ] 🟡 Aggiornare percorso file configurazione olsrd (verificare standard attuale)
- [ ] 🟡 Aggiornare riferimenti a repo Debian (non più Wheezy)
- [ ] 🟢 Aggiungere esempio con systemd service unit al posto dello script init

## Sezione 12: Ground Router — EdgeOS (Ubiquiti EdgeRouter)
- [ ] 🔴 **EdgeOS è sostanzialmente EOL** — Ubiquiti non rilascia più aggiornamenti significativi
- [ ] 🔴 Tabella compatibilità EdgeOS/Debian ferma a Wheezy — completamente obsoleta
- [ ] 🟡 Valutare se mantenere la sezione come "legacy" o rimuoverla
- [ ] 🆕 Considerare aggiunta sezione per Ubiquiti EdgeRouter con firmware alternativo (OpenWrt) o per UISP Router

## Sezione 13: Ground Router — pfSense
- [ ] 🔴 pfSense 2.1.3 / FreeBSD 8.3 è totalmente obsoleto — aggiornare a pfSense 2.7+ / FreeBSD 14
- [ ] 🔴 Percorsi file (`/usr/pbi/`) non esistono più nelle versioni recenti
- [ ] 🔴 OLSRD 0.6.3 è antico — verificare disponibilità pacchetti aggiornati per pfSense attuale
- [ ] 🟡 Sezione NAT: concetti validi, aggiornare interfaccia
- [ ] 🟡 Le sezioni "Configurazione VLAN" e "Configurazione interfacce" sono ancora `TODO`
- [ ] 🆕 Considerare aggiunta OPNsense come alternativa (fork attivo, più aggiornato)

## Sezione 14: Policy Routing
- [ ] 🟡 I concetti e la logica delle tabelle sono ancora validi
- [ ] 🟡 Verificare che i comandi `ip rule` / `ip route` funzionino identicamente su kernel recenti
- [ ] 🟢 Aggiungere nota su `nft` come possibile alternativa per policy routing avanzato

## Sezione 15: Configurazione Scripts EdgeOS
- [ ] 🟡 Legata alla sezione EdgeOS — stessa valutazione legacy
- [ ] 🟢 Se mantenuta, aggiornare gli script (wget → curl, binari MIPS64)

## Sezione 16: Troubleshooting
- [ ] 🟢 Lo script cron olsrd-check è valido concettualmente
- [ ] 🟡 Per OpenWrt: `vi` → `nano` se disponibile, oppure nota sull'uso di vi
- [ ] 🟡 Per pfSense: aggiornare percorsi e riferimenti versione
- [ ] 🆕 Aggiungere troubleshooting per DSA (problemi comuni nella migrazione)
- [ ] 🆕 Aggiungere troubleshooting per RouterOS v7 bridge VLAN filtering

## Sezione 17: FAQ
- [ ] 🆕 **Sezione ancora `TODO`** — scrivere FAQ basate su problemi comuni reali

## Sezione 18: Riferimenti
- [ ] 🆕 **Sezione ancora `TODO`** — compilare con link attuali a documentazione OpenWrt DSA, MikroTik v7, OLSR, Batman, etc.

---

## Attività trasversali

- [x] 🔴 **Sostituire TUTTI gli `ifconfig` con `ip`** in tutta la guida
- [x] 🔴 **Sostituire TUTTI i `vconfig` con `ip link add type vlan`** in tutta la guida
- [x] 🔴 **Sostituire TUTTI i `brctl` con `ip link add type bridge`** in tutta la guida
- [ ] 🟡 **Rifare tutti gli screenshot** — quelli attuali sono tutti placeholder vuoti
- [ ] 🟡 Uniformare la formattazione Markdown (attualmente inconsistente)
- [ ] 🟡 Verificare tutti i link esterni (molti saranno rotti)
- [ ] 🟢 Aggiungere un diagramma di rete aggiornato (sostituire l'immagine vuota nella sezione Vantaggi)
