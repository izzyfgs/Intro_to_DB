import mysql.connector
from mysql.connector import Error

def create_database():
    try:
        # Connect to MySQL Server (not to a specific database yet)
        connection = mysql.connector.connect(
            host='localhost',      # or your server name
            user='root',           # replace with your MySQL username
            password='your_password'  # replace with your MySQL password
        )

        if connection.is_connected():
            cursor = connection.cursor()
            
            # Create database (won’t fail if it already exists)
            cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
            
            print("Database 'alx_book_store' created successfully!")
    
    except Error as e:
        print(f"Error while connecting to MySQL: {e}")
    
    finally:
        # Close the connection
        if connection.is_connected():
            cursor.close()
            connection.close()
            # Optional confirmation
            # print("MySQL connection closed.")

if __name__ == "__main__":
    create_database()
