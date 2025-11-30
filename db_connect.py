# test_connection.py
import pyodbc

def test_tutorify_connection():
    try:
        # Connection details
        server = r'DESKTOP-81TRJB1\SQLEXPRESS'
        database = 'TutorifyFinal'

        connection_string = (
            f"DRIVER={{ODBC Driver 17 for SQL Server}};"
            f"SERVER={server};"
            f"DATABASE={database};"
            f"Trusted_Connection=yes;"
        )

        print("Attempting to connect to Tutorify database...")

        connection = pyodbc.connect(connection_string)
        cursor = connection.cursor()

        # Test query
        cursor.execute("SELECT TutorID, Name, Email FROM Tutor")
        tutors = cursor.fetchall()

        print("SUCCESS: Connected to Tutorify database.")
        print(f"Found {len(tutors)} tutors in database:")

        for tutor in tutors:
            print(f" - {tutor.TutorID}: {tutor.Name} ({tutor.Email})")

        # Close connection
        cursor.close()
        connection.close()
        print("Connection closed properly.")

        return True

    except pyodbc.Error as e:
        print("ERROR: Failed to connect to database.")
        print(f"Error details: {e}")
        return False


if __name__ == "__main__":
    test_tutorify_connection()
