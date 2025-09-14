# EVR:RDY — Ghost Diode

**Open-source hardware project** for a low-cost, one-way data path (Tx→Rx only) aimed at OT/ICS environments.  
Currently a **hardware-first PoC** built from commodity fiber media converters — with a clear roadmap to a **dedicated open hardware product**.

> **License:** CERN Open Hardware Licence v2 — Permissive (CERN OHL v2-P). See `LICENSE`.
>
> **Repo status:** PoC-focused, with reserved space for future firmware/software when (and if) needed.

---

## 🧭 Version Tracks (How to read this repo)
We maintain a simple, explicit split between **PoC** and **Product** documentation:

- **PoC Track (v0.x):** repeatable lab build using off‑the‑shelf parts.  
  - Docs live primarily in `docs/` (build, wiring, validation).  
  - Current: **v0.1.0-poc** — see `docs/releases/v0.1.0-poc.md`.

- **Product Track (v1.x and later):** open hardware device (PCB, enclosure, manufacturing steps).  
  - Design files will live under `hardware/pcbs/` and `manufacturing/`.  
  - Target: **v1.0.0** once PCB + enclosure are published and validated.

See `docs/versioning.md` for naming rules, hardware revs, and tagging examples.

---

## 📦 Structure
- `.github/` → Issues/PR templates
- `docs/` → Overview, architecture, build guide, validation, safety/risk, roadmap, **versioning**
- `docs/releases/` → Release notes by track (e.g., `v0.1.0-poc.md`)
- `hardware/` → BOM, wiring, enclosure notes, **future PCBs**
- `manufacturing/` → Assembly checklist and, later, fabrication guides
- `tests/` → Validation procedures and results
- `scripts/` → Validation helpers (no runtime software required)
- `firmware/` & `software/` → **empty for now**; reserved for future growth
- `legal/` → Notices and attributions

---

## 🚀 Quickstart (PoC)
1. Assemble two MMF media converters and a switch with **one strand of the duplex fiber** from **RED (secure) Tx → BLACK (collection) Rx**.
2. Leave the return strand **unconnected** (or use an Rx‑only optic where possible).
3. Power on and confirm link only on the outbound path.
4. Run `scripts/validate_one_way.sh` from the collection side to confirm **no reverse connectivity**.

---

## 🛣️ Roadmap (high-level)
- **v0.2 PoC:** enclosure guidance, tamper seals, repeatable validation results.  
- **v0.3 PoC:** publish switch config examples and throughput measurements.  
- **v1.0 Product:** KiCad PCB for Tx‑only board, 3D enclosure files, manufacturing guide, tagged **open hardware release**.

---

## ⚠️ Safety & Risk
This is **not** a certified data diode. Treat as a PoC with documented residual risk and follow your org’s policies. See `docs/safety_and_risk.md`.
