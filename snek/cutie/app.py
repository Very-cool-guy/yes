import sys
from PyQt6.QtWidgets import QApplication, QMainWindow, QPushButton, QLabel, QLineEdit, QVBoxLayout, QWidget

class Button(QPushButton):
    def mousePressEvent(self, e):
        super().mousePressEvent(e)
        e.ignore()

class MainWindow(QMainWindow):
    def __init__(self):
        super().__init__()

        self.counter = 1
        
        self.setWindowTitle("meow")
        
        self.button = Button(str(self.counter))
        self.button.setCheckable(True)
        self.button.clicked.connect(self.meow)

        self.label = QLabel()
        self.input = QLineEdit()
        self.input.textChanged.connect(self.label.setText)

        layout = QVBoxLayout()
        layout.addWidget(self.button)
        layout.addWidget(self.input)
        layout.addWidget(self.label)

        container = QWidget()
        container.setLayout(layout)

        self.setCentralWidget(container)

    def meow(self):
        self.counter += 1
        self.button.setText(str(self.counter))

    def mousePressEvent(self, a0):
        self.label.setText(f"moussssss,{a0.position()}")

app = QApplication(sys.argv)

window = MainWindow()
window.show()

app.exec()
