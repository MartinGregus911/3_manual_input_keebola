# ✅ Úloha 3 - čistenie manuálneho inputu (Keebola)

3_manual_input_keebola/
├── README.md                          ← Súhrnný popis riešenia úlohy 3
├── input.csv                          ← Pôvodné vstupné dáta nahrané do Keboola
├── csv_input_cleaned.csv              ← Výstup vyčistených dát (voliteľné zahrnúť)
├── simulation_of_transitions.py       ← Samostatná verzia v Pythone (mimo Keboola)
├── keboola_transformation_script.py   ← ✅ Použitý Python skript priamo v Keboola (s /data/in/ a /data/out/)
├── input_cleanup.sql                  ← SQL verzia transformačnej logiky (samostatne)
├── dbt_project.yml                    ← dbt konfiguračný súbor (pri použití Git integrácie)
└── models/
    └── csv_input_to_clean.sql         ← SQL transformácia kompatibilná s dbt (model)


## Prehľad

Táto úloha spočívala v načítaní manuálne poskytnutého CSV súboru do Keebola, identifikácii a oprave problémov
 s kvalitou dát pomocou Pythonu a uložení vyčisteného výsledku ako výstupnú tabuľku pre ďalšie použitie.

---

### Vykonané kroky

### 1.📥Nahratie vstupu

- originálny súbor `input.csv` bol nahraný do **Storage** ako tabuľka.

### 2. 🛠 Transformácia v Pythone

Vytvorila sa transformácia v Keebola (Python), ktorá:
- odstánila riadky s nulovými hodnotami v kľúčových stĺpcoch:
	- `Category`, `Product`, `TransactionDate`,`ShippingAddress`, `Email`
- odstránila nadbytočné medzery
- prekonvertovala emaily na malé písmená
- validovala základný emailový formát (`@` a `.`)
- odstránila duplikované riadky

✅ Transformácia prebehla **vnútri keebola**, pomocou štandardných ciest:
- Vstup: `/data/in/tables/csv_input.csv`
- Výstup: `/data/out/tables/csv_input_cleaned.csv`

### 3. 🔁 Mapovanie tabuliek

- **Vstupná tabuľka**:
	- Názov: `csv_input_cleaned`
	- Exportovaná zo súboru: `csv_input_cleaned.csv`
	
Obe mapovania boli nastavené manuálne priamo v komponentoch Keebola.

---

Úloha bola úspešne vykonaná, výstup bol overený a logika je dostupná v oboch - SQL aj Python verzii.

---