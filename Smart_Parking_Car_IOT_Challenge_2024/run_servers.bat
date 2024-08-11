@echo off
echo Running firebase_to_mysql.py
start "" cmd /k "python .\Python_Server\Server\firebase_to_mysql.py"

echo Running mqtt_to_mysql.py
start "" cmd /k "python .\Python_Server\Server\mqtt_to_mysql.py"

echo Running main_webcam.py from license-plate-recognition
start ""  cmd /k "cd Computer_Vision\license-plate-recognition\ && python test_customtkinter.py"

echo Running test_customtkinter.py from predict_space
start "" cmd /k "cd Computer_Vision\predict_space\ && python main_webcam.py"

pause
