from pathlib import Path
import psycopg2

# Database connection string
DB_CONN_STR = "your_connection_string_here"

DATA_DIR = "data"

TABLES = [
    ("raw.customers", DATA_DIR / "customers.csv"),
    ("raw.stores", DATA_DIR / "stores.csv"),
    ("raw.products", DATA_DIR / "products.csv"),
    ("raw.employees", DATA_DIR / "employees.csv"),
    ("raw.orders", DATA_DIR / "orders.csv"),
    ("raw.order_items", DATA_DIR / "order_items.csv"),
]


def load_csv_data():
    conn = psycopg2.connect(DB_CONN_STR)
    try:
        with conn.cursor() as cur:
            cur.execute("SET search_path TO raw")
            for table_name, csv_path in TABLES:
                if not csv_path.exists():
                    raise FileNotFoundError(f"CSV file not found: {csv_path}")
                with csv_path.open("r", encoding="utf-8", newline="") as f:
                    cur.execute(f"TRUNCATE {table_name}")
                    cur.copy_expert(f"COPY {table_name} FROM STDIN WITH (FORMAT csv, HEADER true)", f)
            conn.commit()
            print("CSV data loaded successfully into raw schema.")
    finally:
        conn.close()


if __name__ == "__main__":
    load_csv_data()
