package gash.socket;

import java.io.IOException;
import java.net.Socket;

import gash.payload.BasicBuilder;
import gash.payload.Message;

public class BasicClient {
	private String name;
	private String ipaddr;
	private int port;
	private String group = "public";

	private Socket clt;
	private final int maxRetries = 5; // Maximum number of reconnection attempts
    private final long retryDelay = 2000; // Delay between attempts in milliseconds


	public BasicClient(String name) {
		this(name, "127.0.0.1", 2000);
	}

	public BasicClient(String name, String ipaddr, int port) {
		this.name = name;
		this.ipaddr = ipaddr;
		this.port = port;
	}

	public void stop() {
		if (this.clt != null) {
            try {
                this.clt.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        this.clt = null;
	}

	public void join(String group) {
		this.group = group;
	}

	public void connect() {
		int attempt = 0;
        while (attempt < maxRetries && (this.clt == null || !this.clt.isConnected())) {
            try {
                System.out.println("Attempting to connect... (Attempt " + (attempt + 1) + ")");
                this.clt = new Socket(this.ipaddr, this.port);
                System.out.println("Connected to " + clt.getInetAddress().getHostAddress());
                break; // Exit the loop if connection is successful
            } catch (IOException e) {
                System.out.println("Connection attempt failed.");
                if (attempt < maxRetries - 1) {
                    try {
                        Thread.sleep(retryDelay); // Wait before retrying
                    } catch (InterruptedException ie) {
                        Thread.currentThread().interrupt();
                        System.out.println("Connection attempt interrupted.");
                        return;
                    }
                }
            }
            attempt++;
        }
        if (this.clt == null || !this.clt.isConnected()) {
            System.out.println("All connection attempts failed.");
        }
	}

	public void sendMessage(String message) {
		if (this.clt == null || !this.clt.isConnected()) {
            System.out.println("No connection, attempting to reconnect...");
            connect(); // Attempt to reconnect
            if (this.clt == null || !this.clt.isConnected()) {
                System.out.println("Reconnection failed, text not sent.");
                return;
            }
        }

        try {
            BasicBuilder builder = new BasicBuilder();
            byte[] msg = builder.encode(new Message(name, group, message)).getBytes();
            this.clt.getOutputStream().write(msg);
        } catch (IOException e) {
            System.out.println("Sending message failed, attempting to reconnect...");
            connect(); // Attempt to reconnect and send the message again
            // Consideration: Implement retry logic for sendMessage as well, if necessary.
        }
	}
}
