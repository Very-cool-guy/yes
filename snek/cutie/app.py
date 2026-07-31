import sys
from PyQt6.QtCore import QSize, Qt
from PyQt6.QtWidgets import QApplication, QMainWindow, QPushButton

class MainWindow(QMainWindow):
    def __init__(self):
        super().__init__()

        self.setWindowTitle("meow")
        self.setFixedSize(QSize(400, 300))
        
        button = QPushButton("push... me")
        button.setCheckable(True)
        button.clicked.connect(self.meow)

        self.setCentralWidget(button)

    def meow(self):
        print("meow")

app = QApplication(sys.argv)

window = MainWindow()
window.show()

app.exec()
