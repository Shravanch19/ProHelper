# SKC - System and Project Automation Tool

## Overview
SKC is a lightweight command-line tool designed to help developers automate common system and project setup tasks. It provides predefined scripts for starting Flask and Next.js projects, creating virtual environments, and retrieving system information.

## Features
- **Flask Boilerplate**: Quickly set up and start a Flask project.
- **Next.js Boilerplate**: Easily initialize and run a Next.js application.
- **Virtual Environment Management**: Create a Python virtual environment if it doesn’t already exist.
- **System Information**: Retrieve key system details such as OS type, processor, IP address, and user information.

## Installation
1. Clone the repository:
   ```sh
   git clone https://github.com/Shravanch19/skchelp.git
   ```

2. **Open the System Properties Window**
   - Press `Win + R` to open the Run dialog.
   - Type `sysdm.cpl` and press `Enter`.

3. **Access Environment Variables**
   - In the System Properties window, navigate to the **Advanced** tab.
   - Click on the **Environment Variables** button.

4. **Edit the PATH Variable**
   - Under **System Variables** or **User Variables**, locate the `Path` variable.
   - Select `Path` and click on the **Edit** button.

5. **Add a New Directory**
   - Click the **New** button.
   - Enter the full path to the directory you want to add (e.g., `C:\your\new\path`).
   - Click **OK** to save the changes.

6. **Apply the Changes**
   - Close all dialogs by clicking **OK**.
   - Restart your terminal (Command Prompt, PowerShell) or your system to apply the changes.

7. Use `skc` in any desired directory to execute commands.

## Usage
Run `skc` followed by a task name to execute the corresponding action.

```sh
skc [task]
```

### Available Tasks
| Task   | Description |
|--------|-------------|
| `flask`  | Creates a Flask boilerplate and starts the server. |
| `next`   | Creates a Next.js boilerplate and starts the server. |
| `venv`   | Creates a Python virtual environment if not already present. |
| `system` | Displays system information. |
| `help`   | Shows available commands. |

### Examples
- **Start a Flask project:**
  ```sh
  skc flask
  ```
- **Initialize a Next.js project:**
  ```sh
  skc next
  ```
- **Create a virtual environment:**
  ```sh
  skc venv
  ```
- **Display system information:**
  ```sh
  skc system
  ```
- **Show help menu:**
  ```sh
  skc help
  ```

## Contributing
Contributions are welcome! Feel free to fork the repository and submit a pull request with improvements or additional functionality.


## Author
Developed by Shravan Chaturvedi.

## Portfolio
Check out my portfolio [here](https://portfolio-shravan-s-projects-f0f07f2c.vercel.app/).

# How to Add a Directory to the System PATH Variable
