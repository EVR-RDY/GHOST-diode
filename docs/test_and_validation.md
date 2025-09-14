# Test & Validation

1. **Physical:** Only one link LED should illuminate (outbound path).
2. **L2:** Ensure no MAC learning from BLACK into RED.
3. **L3:** Pings from BLACK → RED should fail consistently.
4. **Protocol:** Send UDP syslog/JSON outbound; confirm receipt; attempt reverse to confirm failure.
