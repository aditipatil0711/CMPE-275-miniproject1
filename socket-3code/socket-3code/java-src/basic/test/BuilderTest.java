
import org.junit.Test;
import static org.junit.Assert.*;


import gash.payload.BasicBuilder;
import gash.payload.Message;

public class BuilderTest {
	static final String n = "fred", g = "dogs", t = "hello";
	static final String msg = "dogs,fred,hello";

	@Test
	public void testBuilder() throws Exception {
		BasicBuilder builder = new BasicBuilder();

		String s = builder.encode(new Message(n,g,t));
		Assertions.assertEquals(msg,s);

		System.out.println("msg: " + s);

		var m = builder.decode(s.getBytes());
		Assert.assertEquals(m.getName(),n);
		Assert.assertEquals(m.getGroup(), g);
		Assert.assertEquals(m.getText(),t);
	}

	@Test
    void testEmptyFields() {
        BasicBuilder builder = new BasicBuilder();
        Message message = new Message("", "", "");
        String encoded = builder.encode(message);
        Message decoded = builder.decode(encoded.getBytes());

        Assert.assertEquals("<empty>", decoded.getName());
        Assert.assertEquals("<empty>", decoded.getGroup());
        Assert.assertEquals("<empty>", decoded.getText());
    }

    @Test
    void testSpecialCharacters() {
        BasicBuilder builder = new BasicBuilder();
        Message message = new Message("name,1", "group,1", "text,1");
        String encoded = builder.encode(message);
        Message decoded = builder.decode(encoded.getBytes());

        Assert.assertEquals("name,1", decoded.getName().replace("\\,", ","));
        Assert.assertEquals("group,1", decoded.getGroup().replace("\\,", ","));
        Assert.assertEquals("text,1", decoded.getText().replace("\\,", ","));
    }

    @Test
    void testLongMessages() {
        BasicBuilder builder = new BasicBuilder();
        String longText = "a".repeat(10000); // Example long text
        Message message = new Message("name", "group", longText);
        String encoded = builder.encode(message);
        Message decoded = builder.decode(encoded.getBytes());

        Assert.assertEquals(longText, decoded.getText());
    }
}