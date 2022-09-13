import sqlite3

my_connection = sqlite3.connect("products_management")
my_cursor = my_connection.cursor()

# my_cursor.execute('''
#     CREATE TABLE products (
#         id INTEGER PRIMARY KEY AUTOINCREMENT,
#         name VARCHAR(50) UNIQUE,
#         price INTEGER,
#         section VARCHAR(20)
#     )
# ''')

# products = [
#     ("Ball", 20, "Toy store"),
#     ("Pant", 15, "Confection"),
#     ("Screwdriver", 25, "Ironmongery"),
#     ("Vase", 45, "Ceramics"),
#     ("Pants", 35, "Confection"),
# ]

# my_cursor.executemany(
#     "INSERT INTO products VALUES (NULL, ?, ?, ?)", products)

# my_cursor.execute(
#     "INSERT INTO products VALUES ('AR03', 'Train', 15, 'Toy store')")

# my_cursor.execute("SELECT * FROM products WHERE section = 'Confection'")
# products = my_cursor.fetchall()

# print(products)

# my_cursor.execute("UPDATE products SET price = 35 WHERE name = 'Ball'")

my_cursor.execute("DELETE FROM products WHERE id = 5")

my_connection.commit()
my_connection.close()
