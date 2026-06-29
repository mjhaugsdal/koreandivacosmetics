# Korean Diva Cosmetics

Nettbutikk for premium K-beauty produkter – glam-luksus inspirert hudpleie og makeup fra Sør-Korea.

## Innhold

- `index.html`: forsiden med hero, produktgrid og footer.
- `styles.css`: visuell stil (glam-luksus, responsiv layout).
- `assets/images/*.svg`: 12 placeholder produktbilder.
- `CNAME`: custom domain for GitHub Pages (`koreandivacosmetics.no`).
- `scripts/smoke-test.sh`: enkel sjekk for nodvendige filer.
- `.github/workflows/deploy-pages.yml`: automatisk deploy til GitHub Pages via GitHub Actions.

## Kjor lokalt

Du kan bruke en enkel lokal server. Eksempel med Python:

```bash
python -m http.server 8080
```

Aapne deretter `http://localhost:8080` i nettleseren.

## GitHub Actions + GitHub Pages

1. Push repo til GitHub (standardbranch `main`).
2. Ga til **Settings -> Pages** i repo.
3. Under **Source**, velg **GitHub Actions**.
4. Push en endring til `main` (eller kjor workflow manuelt fra **Actions**).
5. Sjekk at workflowen `Deploy GitHub Pages` blir gronn.
6. I **Settings -> Pages**, legg inn custom domain: `koreandivacosmetics.no`.
7. Kontroller at `CNAME`-filen ligger i repo root med samme domene.

## DNS-oppsett i Webhuset

Lag/oppdater DNS-sonen for `koreandivacosmetics.no` med disse postene:

- Type `A`, Host `@`, Value `185.199.108.153`
- Type `A`, Host `@`, Value `185.199.109.153`
- Type `A`, Host `@`, Value `185.199.110.153`
- Type `A`, Host `@`, Value `185.199.111.153`
- Type `CNAME`, Host `www`, Value `<github-brukernavn>.github.io`

Valgfritt (IPv6):

- Type `AAAA`, Host `@`, Value `2606:50c0:8000::153`
- Type `AAAA`, Host `@`, Value `2606:50c0:8001::153`
- Type `AAAA`, Host `@`, Value `2606:50c0:8002::153`
- Type `AAAA`, Host `@`, Value `2606:50c0:8003::153`

Praktiske notater for Webhuset:

- TTL kan settes til f.eks. `3600` under oppsett.
- Fjern gamle `A`/`AAAA`/`CNAME`-poster for `@` eller `www` som peker andre steder.
- Hvis Webhuset har en "videresending"-funksjon, bruk DNS-records over for riktig Pages-oppsett.
- DNS-endringer kan bruke fra noen minutter til opptil 24 timer (noen ganger mer) for full propagasjon.

## Verifisering

- Sjekk DNS med `nslookup koreandivacosmetics.no` og `nslookup www.koreandivacosmetics.no`.
- Sjekk at **Enforce HTTPS** kan skrus på i **Settings -> Pages** etter at DNS er riktig.
- Bekreft at både `https://koreandivacosmetics.no` og `https://www.koreandivacosmetics.no` laster siden.

## Notat

Nettstedet er fullstendig responsive og designet for GitHub Pages.
Produktnavn, priser og bildene kan enkelt oppdateres etter behov.
