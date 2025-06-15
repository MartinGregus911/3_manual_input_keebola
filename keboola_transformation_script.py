import pandas as pd

df = pd.read_csv("/data/in/tables/csv_input.csv")

# Apply same logic as SQL script
df = df.dropna(subset=["Category", "Product", "TransactionDate", "ShippingAddress", "Email"])
df["Category"] = df["Category"].str.strip()
df["Product"] = df["Product"].str.strip()
df["Email"] = df["Email"].str.strip().str.lower()
df["ShippingAddress"] = df["ShippingAddress"].str.strip()
df = df[df["Email"].str.contains("@") & df["Email"].str.contains("\.")]
df = df.drop_duplicates()

df.to_csv("/data/out/tables/csv_input_cleaned.csv", index=False)
