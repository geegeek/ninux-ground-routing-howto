# Changelog

Tutte le modifiche significative alla guida vengono documentate in questo file.
Il formato è basato su [Keep a Changelog](https://keepachangelog.com/it/1.1.0/).

## [Unreleased]

### Modificato
- **Formattazione globale — comandi shell**: 31 righe con comandi in *corsivo* (`*comando*`) convertite in codice Markdown (`` `inline code` `` o fenced ` ```sh ` block); backslash escape rimossi all'interno (`\-` → `-`, `\>` → `>`, `\_` → `_`, `\#` → `#`, ecc.). Sezioni interessate: EdgeOS (5 blocchi `configure/set/commit/save/exit`), OLSRD install su Debian (`apt-get`), comandi singoli `sudo`, `echo`, `set interfaces`.
- **EdgeOS — Plugin OLSR**: sostituito `TODO per compilazione e configurazione` con box legacy che descrive txtinfo, mdns e jsoninfo (funzione, porta, utilizzo); rimosso heading `# pfSense` mal posizionato sostituito con separatore `---`.
- **pfSense — Routing OLSR**: corretto `status :` con comando errato (`olsrd start`) → `status: olsrd status`; corretto refuso `paccjetto` → `pacchetto`.
- **pfSense — Considerazioni preliminari**: corretto refuso nel titolo (`premilinari` → `preliminari`) e nel testo (`Qundo` → `Quando`); aggiornato link TOC di conseguenza.
- **pfSense — Configurazione VLAN**: sostituito `TODO` con procedura completa per pfSense 2.7+/OPNsense (Interfaces > VLANs, parent interface, VLAN tag, nota su ID coerenti con AirOS).
- **pfSense — Configurazione interfacce**: sostituito `TODO` con procedura per assegnare e abilitare le interfacce VLAN in pfSense/OPNsense (Interfaces > Assignments, IPv4 static, nomenclatura BSD).
- **Troubleshooting — pfSense**: aggiunta nuova sottosezione con 5 problemi comuni: pacchetto OLSRD mancante, percorsi `/usr/pbi/` obsoleti, `rc.conf` sovrascritto, VLAN non attive senza tutti e tre i passaggi, regole firewall per porta 698.
- **Principi di funzionamento — Bridge**: scritto box "Approfondimento tecnico — Bridge" al posto del `[TODO]`, con spiegazione di FDB, forwarding, flooding, STP e comandi iproute2.
- **Principi di funzionamento — VLAN**: scritto box "Approfondimento tecnico — VLAN e 802.1Q" al posto del `[TODO]`, con tabella campi header 802.1Q (TPID, PCP, DEI, VID), nota su MTU 1522 byte, e spiegazione tagged/untagged/PVID.
- **Link esterni**: aggiornato link FreeBSD Handbook cron (vecchio URL → `docs.freebsd.org`); sostituito link morto `debian-administration.org` con riferimento a `man 5 crontab` e wiki Arch Linux.
- **Prefazione**: aggiunto box "Revisione 2026" per indicare che si tratta di un aggiornamento della guida originale 2014-2016.
- **Introduzione**: storicizzati i riferimenti a Sburratone e Scooreggione in un box "Contesto storico"; aggiunto paragrafo che elenca le versioni correnti dei sistemi trattati.
- **Principi di funzionamento**: corretto "801.2Q" → "802.1Q" nella didascalia dell'immagine.
- **Requisiti**: aggiornate specifiche minime hardware 2026 (128 MB RAM, 16 MB flash, DSA); modernizzato riferimento LiveCD → USB; aggiunta alternativa `nmcli` per chi preferisce tenere NetworkManager attivo; aggiornata nota su USB-to-Ethernet.
- **Globale**: rebranding "OpenWRT" → "OpenWrt" (minuscola dalla 18.06 in poi) in tutto il documento.
- **Sezione Linux Box**: aggiornato comando installazione olsrd per Debian/Ubuntu moderne (`apt`); aggiunta nota su `systemctl` per avvio automatico con systemd; rimosso riferimento a installazione "da binario precompilato" come opzione primaria.
- **Sezione EdgeOS (Ubiquiti EdgeRouter)**: aggiunto box "Attenzione: sezione legacy" — EdgeOS è sostanzialmente EOL, tabella Debian ferma a Wheezy. Consigliata migrazione a OpenWrt o hardware moderno.
- **Sezione pfSense**: aggiunto box "Attenzione: contenuto datato" — pfSense 2.1.3 / FreeBSD 8.3 obsoleti, percorsi file cambiati, consigliata OPNsense come alternativa moderna.
- **Sezione Policy Routing**: aggiunta nota su nftables come alternativa, nota su `/etc/rc.local` e systemd.
- **Sezione Scripts EdgeOS**: aggiunto box "sezione legacy", nota su wget → curl.
- **Sezione Troubleshooting**: aggiunte nuove sottosezioni per problemi comuni DSA e RouterOS v7 bridge VLAN filtering; aggiunta nota su editor vi/nano in OpenWrt.
- **Sezione OpenWrt Radio**: scritta ex novo — configurazione VLAN/bridge su antenna con OpenWrt (LuCI e UCI), aggiornata sottosezione Adhoc/Client Mode (`trelay` → `relayd`).
- **Sezione Routing: Batman**: scritta ex novo — guida base a batman-adv su OpenWrt (installazione, configurazione LuCI e UCI, verifica con `batctl`).
- **Sezione OpenWrt (CLI/UCI)**: scritta ex novo — configurazione completa del ground router via comandi UCI per DSA (VLAN, interfacce, LAN, firewall).
- **Sezione FAQ**: scritta ex novo con 6 domande/risposte basate su problemi comuni reali.
- **Sezione Riferimenti**: compilata ex novo con link a documentazione OpenWrt DSA, MikroTik v7, OLSR, Batman, Ninux wiki, IEEE 802.1Q, iproute2.
- **Sezione Requisiti**: aggiornato il testo che menzionava il pacchetto `vlan` e l'utility `vconfig`; ora spiega che `iproute2` è già presente di default su tutte le distro moderne e sostituisce sia `vconfig` che `ifconfig` (pacchetto `net-tools`, anch'esso deprecato).
- **Sezione AirOS (Ubiquiti)**: sostituiti tutti i comandi `ifconfig` con `ip link set` / `ip addr add` / `ip addr flush`; sostituito `vconfig add` con `ip link add ... type vlan id`. Aggiunta nota su AirOS v8.x (airMAX AC) e airMAX 60GHz.
- **Sezione RouterOS (MikroTik)**: riscritta per RouterOS v7 — rimosso "Master Port" (non più esistente), introdotto bridge VLAN filtering a 5 passi. Aggiornato link download Winbox (3.x stabile). Aggiunta WebFig come alternativa per utenti Linux. Vecchia procedura v6 preservata in box "Nota storica".
- **Sezione OpenWRT LuCI — Preparazione**: sostituiti `ifconfig eth0 up` e `ifconfig eth0 up 192.168.1.2/24` con `ip link set eth0 up` e `ip addr add 192.168.1.2/24 dev eth0`.
- **Sezione Linux Box**: sostituito `brctrl addbr` / `brctrl addif` (che era anche un errore di battitura rispetto a `brctl`) con `ip link add name brX type bridge` / `ip link set ethX master brX`.
- **Sezione OpenWrt (LuCI) — Cosa c'è da sapere sugli switch**: riscritta completamente per DSA (Distributed Switch Architecture). Vecchio contenuto swconfig preservato in box "Nota storica".
- **Sezione OpenWrt (LuCI) — Dispositivi consigliati**: nuova tabella hardware 2026 con dispositivi DSA-compatibili (GL.iNet GL-MT6000, Xiaomi AX3000T, BananaPi BPI-R3/R4, ecc.). Vecchia tabella spostata in nota storica.
- **Sezione OpenWrt (LuCI) — Analisi dello switch**: unificate le due sottosezioni (presenza VLAN default + numerazione logica/fisica) in un'unica sezione "Analisi delle interfacce di rete" aggiornata per DSA.
- **Sezione OpenWrt (LuCI) — Creazione delle VLAN**: riscritta completamente per bridge VLAN filtering (DSA) in sostituzione della vecchia procedura "Network > Switch" (swconfig).
- **Sezione OpenWrt (LuCI) — Creazione Network**: aggiornato riferimento da `ethX.Y` a `br-lan.Y` per DSA.
- **Sezione OpenWrt (LuCI) — OLSR**: rimosso riferimento obsoleto a Scooreggione e Barrier Breaker, aggiornato "modem ADSL" → "modem o ONT in fibra".
- **Sezione OpenWrt (LuCI) — Firewalling**: aggiunta nota su fw4/nftables (da OpenWrt 22.03+).

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
