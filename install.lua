if disk.isPresent() == true then
  term.clear()
  term.setCursorPos(1,1)
  print("installing")
  shell.run("mkdir disk/assets")
  term.clear()
  term.setCursorPos(1,1)
  print("installing 1/6")
  shell.run("wget https://raw.githubusercontent.com/HambatEverett/BluDOS/refs/heads/main/disk/startup.lua")
  term.clear()
  term.setCursorPos(1,1)
  print("installing 2/6")
  shell.run("wget https://raw.githubusercontent.com/HambatEverett/BluDOS/refs/heads/main/disk/menu.lua")
  term.clear()
  term.setCursorPos(1,1)
  print("installing 3/6")
  shell.run("wget https://raw.githubusercontent.com/HambatEverett/BluDOS/refs/heads/main/disk/assets/bg1.nfp")
  term.clear()
  term.setCursorPos(1,1)
  print("installing 4/6")
  shell.run("wget https://raw.githubusercontent.com/HambatEverett/BluDOS/refs/heads/main/disk/assets/logo.nfp")
  term.clear()
  term.setCursorPos(1,1)
  print("installing 5/6")
  shell.run("wget https://raw.githubusercontent.com/HambatEverett/BluDOS/refs/heads/main/disk/assets/bg2.nfp")
  term.clear()
  term.setCursorPos(1,1)
  print("installed 6/6, rebooting")
  sleep(2)
  os.reboot()
else
  printError("No disk found.")
end
