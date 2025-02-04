import sys
import os
import subprocess
from PyQt6.QtWidgets import (
    QApplication, QWidget, QVBoxLayout, QPushButton, QLabel, QFileDialog
)
from PyQt6.QtGui import QPalette, QColor

class CoderHelper(QWidget):
    def __init__(self):
        super().__init__()
        self.init_ui()
    
    def init_ui(self):
        self.setWindowTitle("Coder Helper")
        self.setFixedSize(350, 250)
        self.apply_dark_theme()
        
        self.layout = QVBoxLayout()
        self.setLayout(self.layout)  # Set layout once
        
        self.show_main_menu()
    
    def apply_dark_theme(self):
        palette = QPalette()
        palette.setColor(QPalette.ColorRole.Window, QColor(30, 30, 30))
        palette.setColor(QPalette.ColorRole.WindowText, QColor(220, 220, 220))
        self.setPalette(palette)
    
    def create_button(self, text, callback):
        button = QPushButton(text, self)
        button.setStyleSheet("background-color: #222; color: white; padding: 8px;")
        button.clicked.connect(callback)
        self.layout.addWidget(button)
        return button
    
    def show_main_menu(self):
        """Shows the main menu buttons"""
        self.clear_layout()
        self.create_button("Create Project Template", self.show_template_options)
        self.create_button("Code Snippets", self.show_snippet_options)
        self.create_button("AI Code", self.show_ai_options)
        self.create_button("Utilities", self.show_utilities)

    def show_template_options(self):
        self.clear_layout()
        self.create_button("Flask", self.create_flask_project)
        self.create_button("Django", self.create_django_project)
        self.create_button("Next js", self.create_next_project)
        self.create_button("Back", self.show_main_menu)
    
    def show_snippet_options(self):
        self.clear_layout()
        self.layout.addWidget(self.create_label("This feature is coming soon!"))
        self.create_button("Back", self.show_main_menu)
    
    def show_ai_options(self):
        self.clear_layout()
        self.layout.addWidget(self.create_label("This feature is coming soon!"))
        self.create_button("Back", self.show_main_menu)

    def show_utilities(self):
        """Show utility functions"""
        self.clear_layout()
        self.create_button("Create Virtual Environment", self.create_venv)
        self.create_button("Install Requirements", self.install_requirements)
        self.create_button("Run a Python File", self.run_python_file)
        self.create_button("Open Project Folder", self.open_project_folder)
        self.create_button("Initialize Git Repo", self.init_git_repo)
        self.create_button("Back", self.show_main_menu)

    def create_label(self, text):
        label = QLabel(text, self)
        label.setStyleSheet("color: #888; padding: 8px;")
        return label
    
    def clear_layout(self):
        """Clears all widgets from the layout without resetting the layout itself"""
        while self.layout.count():
            child = self.layout.takeAt(0)
            if child.widget():
                child.widget().deleteLater()

    def create_flask_project(self):
        self.run_command(["Mflasknew", os.getcwd()])
    
    def create_django_project(self):
        pass
    def create_next_project(self):
        pass
    
    def create_venv(self):
        self.run_command(["python", "-m", "venv", "venv"])
    
    def install_requirements(self):
        self.run_command(["pip", "install", "-r", "requirements.txt"])
    
    def run_python_file(self):
        file_path, _ = QFileDialog.getOpenFileName(self, "Select Python File", "", "Python Files (*.py)")
        if file_path:
            self.run_command(["python", file_path])
    
    def open_project_folder(self):
        folder_path = QFileDialog.getExistingDirectory(self, "Select Project Folder")
        if folder_path:
            os.startfile(folder_path)  # Opens the folder in File Explorer
    
    def init_git_repo(self):
        self.run_command(["git", "init"])
    
    def run_command(self, command):
        try:
            res = subprocess.run(command, shell=True, capture_output=True, text=True)
            print(res.stdout)
            print(res.stderr)
        except Exception as e:
            print(f"An error occurred: {e}")

if __name__ == "__main__":
    app = QApplication(sys.argv)
    window = CoderHelper()
    window.show()
    sys.exit(app.exec())
