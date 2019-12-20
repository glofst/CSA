import socket

sock = socket.socket()
sock.bind(('', 9080))
print("Server started")


while True:
    sock.listen(1)
    conn, addr = sock.accept()

    print ('Connected:', addr)

    data = conn.recv(1024)
    if not data:
        print('Data failed')
        break
    print('Client sent: ', data.decode('utf-8'))
    conn.send(b'Hello, client!')
    conn.close()

