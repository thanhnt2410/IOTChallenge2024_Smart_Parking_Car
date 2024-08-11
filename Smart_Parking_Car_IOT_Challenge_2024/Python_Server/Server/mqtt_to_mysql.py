import paho.mqtt.client as mqtt
import pymysql
import json

# MQTT broker information
MQTT_BROKER = "103.1.238.175"
MQTT_PORT = 1883
MQTT_TOPIC = "IOT24/Device/payload"
MQTT_USERNAME = "test"
MQTT_PASSWORD = "testadmin"

# MySQL database information
DB_HOST = "localhost"
DB_USER = "root"
DB_PASSWORD = ""
DB_NAME = "bai-do-xe-db"

# Function to save data to MySQL
def save_to_db(data):
    connection = pymysql.connect(
        host=DB_HOST,
        user=DB_USER,
        password=DB_PASSWORD,
        database=DB_NAME
    )

    cursor = connection.cursor()

    source_address = data['source_address']
    status = data['vehicle_sensor']
    battery = data['battery_value']
    fire = data['fire_sensor']

    # Check if the record exists
    cursor.execute("SELECT COUNT(*) FROM thong_tin_diem_do WHERE address=%s", (source_address,))
    result = cursor.fetchone()

    if result[0] > 0:
        # Update the existing record
        sql = """
        UPDATE thong_tin_diem_do 
        SET status=%s, battery=%s, fire=%s, last_update=NOW() 
        WHERE address=%s
        """
        cursor.execute(sql, (status, battery, fire, source_address))
    else:
        # Insert a new record
        sql = """
        INSERT INTO thong_tin_diem_do (address, status, battery, fire, last_update) 
        VALUES (%s, %s, %s, %s, NOW())
        """
        cursor.execute(sql, (source_address, status, battery, fire))

    connection.commit()
    cursor.close()
    connection.close()

# MQTT callback functions
def on_connect(client, userdata, flags, rc):
    if rc == 0:
        print("Connected to MQTT Broker!")
        client.subscribe(MQTT_TOPIC)
    else:
        print("Failed to connect, return code %d\n", rc)

def on_message(client, userdata, msg):
    print(f"Received `{msg.payload.decode()}` from `{msg.topic}` topic")
    data = json.loads(msg.payload.decode())
    save_to_db(data)

# Set up MQTT client
client = mqtt.Client()
client.username_pw_set(MQTT_USERNAME, MQTT_PASSWORD)
client.on_connect = on_connect
client.on_message = on_message

client.connect(MQTT_BROKER, MQTT_PORT, 60)

# Blocking call that processes network traffic, dispatches callbacks and handles reconnecting.
client.loop_forever()
