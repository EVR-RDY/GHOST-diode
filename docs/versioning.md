# Versioning & Release Tracks

This project uses **two tracks**, but **both are fully licensed under CERN OHL v2-S**:

## Tracks
- **PoC Track (v0.x.y-poc):**
  - Documented builds using commodity parts (media converters, switches, fiber).
  - All diagrams, BOMs, and validation notes are OHL-S.
- **Product Track (v1.x.y and beyond):**
  - Dedicated open hardware device (PCB, enclosure, manufacturing).
  - PCB source files, 3D models, and assembly docs must be published under OHL-S.

## Tagging Examples
- `v0.1.0-poc` — first PoC release, licensed OHL-S.
- `v0.3.0-poc` — PoC milestone with more documentation and validation.
- `v1.0.0` — first open hardware release with PCB gerbers, enclosure files, and manufacturing docs.

## Hardware Revisions
- PCB revisions: `rev-A`, `rev-B`, etc.
- Enclosure revisions: `encl-1.0`, `encl-1.1`.

## Branching
- `main` → latest stable, OHL-S licensed
- Short-lived PR branches: `docs/...`, `hw/...`, `tests/...`.
