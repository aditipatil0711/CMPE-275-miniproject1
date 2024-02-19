import socket
import sys
import time
sys.path.append('/mnt/c/Users/patil/Downloads/projects_export/mini-1/socket-3code/socket-3code/python-src')
from basic.payload.builder import BasicBuilder

class BasicClient(object):
    def __init__(self, name, ipaddr="127.0.0.1", port=2000):
        self._clt = None
        self.name = name
        self.ipaddr = ipaddr
        self.port = port
        self.retry_attempts = 3  # Number of retry attempts
        self.retry_delay = 5  # Delay between retries in seconds

        self.group = "public"

        if self.ipaddr is None:
            raise ValueError("IP address is missing or empty")
        elif self.port is None:
            raise ValueError("port number is missing")

        self.connect()

    def __del__(self):
        self.stop()

    def stop(self):
        if self._clt is not None:
            self._clt.close()
        self._clt = None

    def connect(self):
        if self._clt is not None:
            return

        addr = (self.ipaddr,self.port)
        self._clt = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        # For UDP Connection
        #self._clt = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        #self._clt.connect(addr)
        #self._clt.setblocking(False)

        for attempt in range(self.retry_attempts):
            try:
                self._clt.connect(addr)
                print("Connected to the server successfully.")
                break  # Exit the loop if connection is successful
            except socket.error as e:
                print(f"Connection failed on attempt {attempt + 1}: {e}")
                if attempt < self.retry_attempts - 1:  # Check if more retries are left
                    print(f"Retrying in {self.retry_delay} seconds...")
                    time.sleep(self.retry_delay)
                else:
                    print("All connection attempts failed. Please check the server and try again later.")
                    self.stop()  # Close the socket if all retries fail


    def join(self, group):
        self.group = group

    def sendMsg(self, text):
        if self._clt is None:
            raise RuntimeError("No connection to server exists")

        print(f"sending to group {self.group} from {self.name}: {text}")
        bldr = BasicBuilder()
        m = bldr.encode(self.name,self.group,text)
        self._clt.send(bytes(m, "utf-8"))
    
    def sendMsg1(self, text):
        if self._clt is None:
            raise RuntimeError("Socket is not created")

        print(f"sending to {self.ipaddr}:{self.port} from {self.name}: {text}")
        bldr = BasicBuilder()
        m = bldr.encode(self.name, self.group, text)
        self._clt.sendto(bytes(m, "utf-8"), (self.ipaddr, self.port))

    def groups(self):
        # return list of groups
        pass

    def getMsgs(self):
        # get the latest messages from a group
        pass


if __name__ == '__main__':
    clt = BasicClient("frida_kahlo","127.0.0.1",2000)
    while True:
        m = input("enter message: ")
        if m == '' or m == 'exit':
            break
        else:
            clt.sendMsg(m)
            #clt.sendMsg(m)
