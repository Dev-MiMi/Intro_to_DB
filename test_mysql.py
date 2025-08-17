import mysql.connector

conn = mysql.connector.connect(
    host="127.0.0.1",   # or "localhost"
    port=3306,          # MariaDB/MySQL default port
    user="root",
    password="08037233955MsO@",        # set your root password here if you created one
    database="alx_book_store"
)

cursor = conn.cursor()
cursor.execute("SELECT * FROM Authors;")

for row in cursor.fetchall():
    print(row)

cursor.close()
conn.close()
