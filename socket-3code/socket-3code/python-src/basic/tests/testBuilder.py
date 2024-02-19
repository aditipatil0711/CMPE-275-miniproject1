import unittest
import sys
sys.path.append('/mnt/c/Users/patil/Downloads/projects_export/mini-1/socket-3code/socket-3code/python-src')
from basic.payload import builder

class TestBuilder(unittest.TestCase):
    def setUp(self):
        self.b = builder.BasicBuilder()

    def tearDown(self):
        pass

    def testEncode(self):
        n = "fred"
        g = "dogs"
        t = "hello"

        b = builder.BasicBuilder()
        r = b.encode(n,g,t)
        print(f"encoded: {r}")

        parts = b.decode(r)

        self.assertEqual(n,parts[0])
        self.assertEqual(g,parts[1])
        self.assertEqual(t,parts[2])

    def testEncodeWithEmptyFields(self):
        b = builder.BasicBuilder()
        r = b.encode("", "", "")
        parts = b.decode(r)
        self.assertEqual("", parts[0])
        self.assertEqual("", parts[1])
        self.assertEqual("", parts[2])

    def testEncodeWithSpecialCharacters(self):
        b = builder.BasicBuilder()
        name = "fr\\ied,a"
        group = "do\\,gs"
        message = "he\\,llo"
        r = b.encode(name, group, message)
        parts = b.decode(r)
        self.assertEqual(name, parts[0])
        self.assertEqual(group, parts[1])
        self.assertEqual(message, parts[2])

    def testEncodeWithLargeMessage(self):
        b = builder.BasicBuilder()
        message = "a" * 5000  # Large message
        r = b.encode("name", "group", message)
        parts = b.decode(r)
        self.assertEqual("name", parts[0])
        self.assertEqual("group", parts[1])
        self.assertEqual(message, parts[2])

    def testMessageLengthPrefixAccuracy(self):
        b = builder.BasicBuilder()
        message = "hello"
        r = b.encode("name", "group", message)
        expected_length = len(r) - 5  # Subtracting the length of the prefix itself
        actual_length = int(r[:4])
        self.assertEqual(expected_length, actual_length)

    def testDecode(self):  
        b = builder.BasicBuilder()
        name, group, message = b.decode("0005,group,name,msg01")
        self.assertEqual("name", name)
        self.assertEqual("group", group)
        self.assertEqual("msg01", message)

    def testRoundTripEncodingDecoding(self):
        b = builder.BasicBuilder()
        original_name = "user"
        original_group = "testers"
        original_message = "This is a test message."
        encoded = b.encode(original_name, original_group, original_message)
        decoded_name, decoded_group, decoded_message = b.decode(encoded)
        self.assertEqual(original_name, decoded_name)
        self.assertEqual(original_group, decoded_group)
        self.assertEqual(original_message, decoded_message)



if __name__ == '__main__':
    unittest.main()
