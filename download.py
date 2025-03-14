import subprocess
import time

while True:
  ret = subprocess.run(
    "bypy syncdown cv-datasets/imagenet-100 ./datasets/imagenet-100", shell=True
  )
  if ret.returncode == 0:
    break
  print("epoch download faield.")
  time.sleep(20)
