CREATE TABLE IF NOT EXISTS customers (
    customer_id INTEGER PRIMARY KEY,
    name TEXT,
    gender TEXT,
    birthdate DATE,
    age INTEGER,
    city TEXT,
    state TEXT,
    country TEXT,
    continent TEXT
);

CREATE TABLE IF NOT EXISTS products (
    product_id INTEGER PRIMARY KEY,
    name TEXT,
    category TEXT,
    subcategory TEXT,
    unit_cost REAL,
    unit_price REAL
);

CREATE TABLE IF NOT EXISTS sales (
    order_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    product_id INTEGER,
    store_id INTEGER,
    order_date DATE,
    quantity INTEGER,
    unit_price REAL,
    revenue REAL
);

CREATE TABLE IF NOT EXISTS stores (
    store_id INTEGER PRIMARY KEY,
    name TEXT,
    city TEXT,
    state TEXT,
    country TEXT,
    continent TEXT,
    size_sqm INTEGER,
    open_date DATE
);

CREATE TABLE IF NOT EXISTS exchange_rates (
    currency TEXT PRIMARY KEY,
    rate_to_usd REAL
);
