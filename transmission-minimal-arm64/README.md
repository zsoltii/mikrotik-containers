# transmission-minimal-arm64-alpine

## English
This project provides a minimal Docker container for running the Transmission BitTorrent daemon, specifically designed for ARM64 MikroTik routers, using Alpine Linux as the base image. The container is optimized for lightweight environments and includes basic configuration and startup scripts. It exposes the necessary ports for Transmission's web interface and peer communication.

### Main Features
- Minimal Alpine-based image for ARM64
- Transmission-daemon pre-installed
- Customizable configuration via mounted volumes
- Exposes ports 9091 (web UI), 51413 (TCP/UDP for peers)

### Volumes
- `/config` (default): Stores Transmission configuration files, including `settings.json`.
- `/downloads` (default): Directory for completed downloads.
- `/incomplete` (optional): Directory for incomplete downloads (disabled by default).
- `/watch` (optional): Directory for auto-adding torrents (not enabled by default).

### Usage
Build and run the container using the provided Dockerfile and scripts. By default, only `/config` and `/downloads` volumes are enabled. You can mount additional volumes as needed for incomplete or watched torrents.

## Magyar
Ez a projekt egy minimális Docker konténert biztosít a Transmission BitTorrent démon futtatásához, kimondottan ARM64 MikroTik routerek számára, Alpine Linux alapképpel. A konténer könnyű környezetekhez optimalizált, tartalmazza az alapvető konfigurációt és indító szkripteket, valamint elérhetővé teszi a Transmission webes felületéhez és a peer kommunikációhoz szükséges portokat.

### Főbb jellemzők
- Minimális Alpine-alapú image ARM64-re
- Előre telepített transmission-daemon
- Testreszabható konfiguráció csatolt köteteken keresztül
- 9091-es port (webes felület), 51413-as port (TCP/UDP peer kommunikáció)

### Volume-ok
- `/config` (alapértelmezett): A Transmission konfigurációs fájljai, beleértve a `settings.json`-t.
- `/downloads` (alapértelmezett): A befejezett letöltések könyvtára.
- `/incomplete` (opcionális): A befejezetlen letöltések könyvtára (alapból kikapcsolva).
- `/watch` (opcionális): Torrentek automatikus hozzáadására szolgáló könyvtár (alapból nincs bekapcsolva).

### Használat
Építsd meg és futtasd a konténert a mellékelt Dockerfile és szkriptek segítségével. Alapértelmezetten csak a `/config` és `/downloads` volume-ok aktívak. Igény szerint csatolhatsz további köteteket a befejezetlen vagy automatikusan hozzáadott torrentekhez.
