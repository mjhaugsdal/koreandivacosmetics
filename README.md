# Korean Diva Cosmetics (mockup)

Statisk mockup for en glam-luksus K-beauty nettbutikk pa norsk.

## Innhold

- `index.html`: forsiden med hero, produktgrid og footer.
- `styles.css`: visuell stil (glam-luksus, responsiv layout).
- `assets/images/*.svg`: 12 placeholder produktbilder.
- `CNAME`: custom domain for GitHub Pages (`koreandivacosmetics.no`).
- `scripts/smoke-test.sh`: enkel sjekk for nodvendige filer.

## Kjor lokalt

Du kan bruke en enkel lokal server. Eksempel med Python:

```bash
python -m http.server 8080
```

Aapne deretter `http://localhost:8080` i nettleseren.

## Publiser pa GitHub Pages

1. Push repo til GitHub.
2. Ga til **Settings -> Pages**.
3. Velg deploy fra `main` branch (root).
4. Kontroller at `CNAME` ligger i root.
5. Pek domenet DNS mot GitHub Pages (A-records/CNAME etter behov hos registrar).

## Notat

Produktnavn, priser og bilder er placeholders for mockup.

