import pandas as pd
import sqlite3
from datetime import datetime

# Load CSVs
def load_csv(file_path):
    return pd.read_csv(file_path)

# Preprocess customers
def preprocess_customers(df):
    df['birthdate'] = pd.to_datetime(df['birthdate'], errors='coerce')
    df['age'] = df['birthdate'].apply(lambda x: datetime.now().year - x.year if pd.notnull(x) else None)
    return df

# Preprocess sales
def preprocess_sales(df):
    df['order_date'] = pd.to_datetime(df['order_date'], errors='coerce')
    df['revenue'] = df['quantity'] * df['unit_price']
    return df

# Load to SQLite DB
def load_to_sql(df_dict, db_path='global_electronics.db'):
    conn = sqlite3.connect(db_path)
    for table_name, df in df_dict.items():
        df.to_sql(table_name, conn, if_exists='replace', index=False)
    conn.close()

def main():
    customer_df = preprocess_customers(load_csv('data/customers.csv'))
    product_df = load_csv('data/products.csv')
    sales_df = preprocess_sales(load_csv('data/sales.csv'))
    store_df = load_csv('data/stores.csv')
    exchange_df = load_csv('data/exchange_rates.csv')

    data_dict = {
        "customers": customer_df,
        "products": product_df,
        "sales": sales_df,
        "stores": store_df,
        "exchange_rates": exchange_df
    }

    load_to_sql(data_dict)
    print("✅ Data loaded into SQLite database successfully.")

if __name__ == "__main__":
    main()
