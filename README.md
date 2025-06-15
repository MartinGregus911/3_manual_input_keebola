# ✅ Task 3 – Manual Input Cleanup (Keboola)

3_manual_input_keebola/
├── README.md                          ← Full summary of Task 3 solution
├── input.csv                          ← Raw input data uploaded to Keboola
├── csv_input_cleaned.csv              ← Cleaned output result (optional to include)
├── simulation_of_transitions.py       ← Standalone Python version (runs outside Keboola)
├── keboola_transformation_script.py   ← ✅ Working Python script used in Keboola (with /data/in/ and /data/out/ paths)
├── input_cleanup.sql                  ← SQL version of the cleaning logic (standalone)
├── dbt_project.yml                    ← dbt project file (used if connecting via Git to dbt component)
└── models/
    └── csv_input_to_clean.sql         ← SQL version of transformation logic (dbt-compatible model)


## Overview

This task involved loading a manually provided CSV file into Keboola, identifying and fixing data quality issues using Python, and saving the cleaned result as an output table for further use.

---

## Steps Completed

### 1. 📥 Input Upload

- The original file `input.csv` was uploaded to **Storage** as a table:

### 2. 🛠 Python Transformation

A Python transformation was created directly in Keboola to:
- Remove rows where key fields were null:
- `Category`, `Product`, `TransactionDate`, `ShippingAddress`, `Email`
- Strip whitespace from text fields
- Convert all email addresses to lowercase
- Validate basic email format (`@` and `.` must be present)
- Remove duplicate rows

✅ The transformation script was run **inside Keboola**, using the standard paths:
- Input: `/data/in/tables/csv_input.csv`
- Output: `/data/out/tables/csv_input_cleaned.csv`

### 3. 🔁 Table Mappings

- **Input Mapping**:
- Table: `manual-input.csv_input`
- Mounted to: `csv_input.csv`

- **Output Mapping**:
- Table: `csv_input_cleaned`
- Saved from: `csv_input_cleaned.csv`

Both mappings were configured manually within the Python transformation component.

---

## Result ✅

- Output table is available in Storage at:

	out.csv_input_cleaned

The task was successfully executed, the output was verified, and the logic was preserved across both SQL and Python implementations.

