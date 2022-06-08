from pygame import mixer
import time
from pathlib import Path

DIR= Path.cwd()
mixer.init()
mixer.music.load(f"{DIR}/media/dhum_tana.mp3")
mixer.music.play()
while mixer.music.get_busy():  # wait for music to finish playing
    time.sleep(1)


