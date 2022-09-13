import sqlite3

my_connection = sqlite3.connect("first_database")
my_cursor = my_connection.cursor()

# my_cursor.execute("""
#     CREATE TABLE IF NOT EXISTS products (
#         name VARCHAR(50),
#         price INTEGER,
#         section VARCHAR(20)
#     )
# """)

# my_cursor.execute("""
#     INSERT INTO products VALUES ('Ball', 15, 'Sports')
# """)

# products = [
#     ("T-shirt", 10, "Sports"),
#     ("Vase", 90, "Ceramics"),
#     ("Truck", 20, "Toys")
# ]

# my_cursor.executemany("INSERT INTO products VALUES (?, ?, ?)", products)

my_cursor.execute("SELECT * FROM products")
products = my_cursor.fetchall()

for product in products:
    print(f"Name: {product[0]}, Price: {product[1]}, Section: {product[2]}")

my_connection.commit()
my_connection.close()
