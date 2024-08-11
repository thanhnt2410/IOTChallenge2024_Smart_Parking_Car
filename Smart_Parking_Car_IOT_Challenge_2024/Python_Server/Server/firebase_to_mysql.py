import mysql.connector
import firebase_admin
from firebase_admin import credentials, db
import time
from datetime import datetime

# Khởi tạo ứng dụng Firebase
cred = credentials.Certificate("car-parking-bk-vision-edcdb2bc761d.json")
firebase_admin.initialize_app(cred, {
    'databaseURL': 'https://car-parking-bk-vision-default-rtdb.firebaseio.com/'
})

# Thông tin kết nối MySQL
DB_HOST = "localhost"
DB_USER = "root"
DB_PASSWORD = ""
DB_NAME = "bai-do-xe-db"

# Kết nối đến MySQL
conn = mysql.connector.connect(
    host=DB_HOST,
    user=DB_USER,
    password=DB_PASSWORD,
    database=DB_NAME
)
cursor = conn.cursor()

def insert_parking_data(license_plate, booking_time):
    check_query = """
        SELECT COUNT(*) FROM thong_tin_ve_xe WHERE licence_plate = %s AND booking_time = %s
    """
    cursor.execute(check_query, (license_plate, booking_time))
    result = cursor.fetchone()

    if result[0] == 0:
        insert_query = """
            INSERT INTO thong_tin_ve_xe (licence_plate, is_parking, booking_time, parking_time)
            VALUES (%s, %s, %s, %s)
        """
        values = (license_plate, 0, booking_time, '0000-00-00 00:00:00')
        cursor.execute(insert_query, values)
        conn.commit()
        print(f"Inserted data for license plate: {license_plate} at {booking_time}")
    else:
        print(f"Data for license plate: {license_plate} at {booking_time} already exists")

def read_all_license_plate_data():
    reserved_list_ref = db.reference('Reserved List')
    data = reserved_list_ref.get()
    
    if data:
        for license_plate, info in data.items():
            marker_title = info.get('markertitle', '')
            save_date = info.get('saveCurrentDate', '')
            save_time = info.get('saveCurrentTime', '')
            
            if save_date and save_time:
                booking_time_str = f"{save_date} {save_time}"
                booking_time = datetime.strptime(booking_time_str, '%b %d, %Y %I:%M:%S %p')
                booking_time_formatted = booking_time.strftime('%Y-%m-%d %H:%M:%S')
                
                insert_parking_data(license_plate, booking_time_formatted)
            
            print(f"License Plate: {license_plate}")
            print(f"Parking Location: {marker_title}")
            print(f"Date: {save_date}")
            print(f"Time: {save_time}")
            print("------------")
    else:
        print("No data found in Reserved List.")
        print("------------")

if __name__ == "__main__":
    try:
        while True:
            read_all_license_plate_data()
            time.sleep(5)  # Đợi 5 giây trước khi đọc lại dữ liệu
    except KeyboardInterrupt:
        print("Program interrupted")
    finally:
        cursor.close()
        conn.close()
        print("Database connection closed.")
