import socket

sock = socket.socket()
sock.connect(('localhost', 9080))
sock.send(b'Hello, server!')

data = sock.recv(1024)
sock.close()

print('Server answered: ', data.decode('utf-8'))
