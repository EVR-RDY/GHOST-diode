# Architecture

```
[ Secure / RED ] ---TX---> [ BLACK / Collection ]
     (switch)               (media converter/switch)
       |                          |
       |                          v
     No Rx                   Forward to SIEM/collector
```

- **Optical asymmetry:** use only one fiber strand from RED Tx to BLACK Rx.
- **No inbound:** reverse path is physically absent or RX-only on BLACK side.
- **Policy:** avoid enabling inbound services on RED; lock down switch ports.
