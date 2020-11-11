import getpass
userID = getpass.getuser()
import socket
machineID = socket.gethostname()

print (machineID)
print (userID)
