import socket
import sys

sock = socket.socket()
sock.connect(('localhost', 3000))
    #print('Connected')
#else:
#    print('Connection failed')
#    sys.exit(0)
sock.send(b'Hello, server!')

data = sock.recv(1024)
sock.close()

print('Server answered: ', data.decode('utf-8'))
