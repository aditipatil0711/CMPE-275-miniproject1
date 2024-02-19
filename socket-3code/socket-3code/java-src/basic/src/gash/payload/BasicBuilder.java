package gash.payload;

/**
 * the builder to construct commands that both the client (BasicSocketClient)
 * and server (BasicServer) understands/accepts
 * 
 * @author gash
 * 
 */
public class BasicBuilder {

	public BasicBuilder() {
	}

	public String encode(Message msg) {

		// Use a placeholder for empty fields
		String name = msg.getName().isEmpty() ? "<empty>" : msg.getName().replace(",", "\\,");
		String group = msg.getGroup().isEmpty() ? "<empty>" : msg.getGroup().replace(",", "\\,");
		String text = msg.getText().isEmpty() ? "<empty>" : msg.getText().replace(",", "\\,");
		
		var payload = group + "," + name + "," + text;
		var length = payload.getBytes().length; // Assuming UTF-8 encoding
		return length + "," + payload;
		
		
		/*var payload = msg.getGroup() + "," + msg.getName() + "," + msg.getText();
	    var length = payload.getBytes().length; // Assuming UTF-8 encoding
	    return length + "," + payload;
		
		var sb = new StringBuilder();
		sb.append(msg.getGroup()).append(",").append(msg.getName()).append(",").append(msg.getText());

		return sb.toString();*/
	}

	public Message decode(byte[] raw) throws Exception {
		if (raw == null || raw.length == 0)
			return null;

		var s = new String(raw);
		var parts = s.split(",", 3);
		var rtn = new Message(parts[1], parts[0], parts[2]);

		return rtn;
	}
}
