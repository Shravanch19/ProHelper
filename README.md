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
   git clone https://github.com/yourusername/skc.git
   ```
2. Run the `setup.bat` script for easy access, making SKC globally accessible:
   ```sh
   setup.bat
   ```
3. Use `skc` in any desired directory to execute commands.

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

