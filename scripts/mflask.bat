@echo off
setlocal enabledelayedexpansion

:input_project_name
set /p name="Enter the name of the project (or type 'exit' to exit): "
if /i "%name%"=="exit" (
    echo Exiting...
    exit /b
)
if "%name%"=="" (
    echo Please provide the name of the project or type 'exit' to exit
    goto input_project_name
)
set address=%cd%

mkdir "%name%"

cd "%name%"

mkdir "static"
mkdir "templates"


:: Writing main.py
echo from flask import Flask, render_template > main.py
echo. >> main.py
echo app = Flask(__name__, static_url_path='/assets') >> main.py
echo. >> main.py
echo @app.route("/") >> main.py
echo def hello_world(): >> main.py
echo     return render_template('main.html') >> main.py
echo. >> main.py
echo if __name__ == "__main__": >> main.py
echo     app.run() >> main.py


:: Writing HTML template
(
echo ^<!DOCTYPE html^>
echo ^<html lang="en"^>
echo ^<head^>
echo     ^<meta charset="UTF-8"^>
echo     ^<meta name="viewport" content="width=device-width, initial-scale=1.0"^>
echo     ^<title^>Document^</title^>
echo     ^<link rel="stylesheet" href="assets/style.css"^>
echo ^</head^>
echo ^<body^>
echo.
echo ^</body^>
echo ^</html^>
) > templates\main.html

:: Writing CSS file
(
echo /* This is a CSS comment */
) > static\style.css

:: Writing requirements.txt
(
echo flask
) > requirements.txt

:: Creating a virtual environment
if not exist "venv" (
    python -m venv venv
    echo Virtual environment created.
) else (
    echo Virtual environment already exists.
)

echo .
echo Flask project created successfully.
echo .
echo to activate the virtual environment, run:  venv/Scripts/activate
echo .
echo to install dependencies run: pip install -r requirements.txt
echo .
echo to run the app, run: flask --app main run
echo .
echo Enjoy your coding!
pause

exit

