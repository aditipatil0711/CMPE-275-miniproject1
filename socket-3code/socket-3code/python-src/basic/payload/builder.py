class BasicBuilder(object):
    def encode(self, name, group, msg):
        # Escape backslashes and then commas to handle special characters correctly
        esc_name = name.replace("\\", "\\\\").replace(",", "\\,")
        esc_group = group.replace("\\", "\\\\").replace(",", "\\,")
        esc_msg = msg.replace("\\", "\\\\").replace(",", "\\,")

        payload = f"{esc_group},{esc_name},{esc_msg}"
        return f"{len(payload):04d},{payload}"
    
    def decode(self, raw):
        payload = raw[5:]  # Skip the length prefix
        parts = []
        part, escape_next = "", False
        
        for char in payload:
            if escape_next:
                part += char
                escape_next = False
            elif char == "\\":
                escape_next = True
            elif char == "," and not escape_next:
                parts.append(part)
                part = ""
            else:
                part += char

        # Append the last part after loop exits
        parts.append(part)
        
        # Assign parts to name, group, and msg
        if len(parts) >= 2:
            group, name, msg = parts[0], parts[1], ' '.join(parts[2:])
        else:
            raise ValueError("Invalid message format")

        return name, group, msg



"""
class BasicBuilder(object):
    def __init__(self):
        pass
        
    def encode(self, name, group, msg):
        payload = (f"{group},{name},{msg}")
        return (f"{len(payload):04d},{payload}")

    def decode(self, raw):
        parts = raw.split(",", 4)
        if len(parts) != 4:
            raise ValueError(f"message format error: {raw}")
        else:
            return parts[2], parts[1], parts[3]
"""