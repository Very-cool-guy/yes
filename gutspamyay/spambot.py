import pynput.mouse as ms
from pynput.keyboard import Key
import pynput.keyboard as kb
from pynput.mouse import Button
import time, subprocess

mouse = ms.Controller()
keyboard = kb.Controller()

List_pos = {
        "compose" : (384.2890625, 189.0625),
        "subject" : (845.01953125, 471.52734375),
        "message" : (936.2265625, 545.15234375),
        "send" : (847.19921875, 922.33984375)}

time.sleep(5)

for i in range(100):
    time.sleep(1)
    mouse.position = List_pos["compose"]
    time.sleep(0.2)
    mouse.click(Button.left)
    time.sleep(1.5)
    keyboard.type('emailhere')
    time.sleep(0.1)
    keyboard.press(Key.enter)
    keyboard.release(Key.enter)

    time.sleep(0.1)
    mouse.position = List_pos["subject"]
    time.sleep(0.2)
    mouse.click(Button.left)
    time.sleep(1)
    keyboard.type('French spam ' + str(i))

    time.sleep(0.1)
    subprocess.run("python /Users/student/Desktop/kool\\ programz/gutspamyay/gutfrench.py | pbcopy", shell=True)
    mouse.position = List_pos["message"]
    time.sleep(0.1)
    mouse.click(Button.left)
    time.sleep(0.5)
    keyboard.press(Key.cmd)
    time.sleep(0.1)
    keyboard.press('v')
    time.sleep(0.1)
    keyboard.release('v')
    time.sleep(0.1)
    keyboard.release(Key.cmd)

    time.sleep(0.1)
    mouse.position = List_pos["send"]
    time.sleep(0.1)
    mouse.click(Button.left)


