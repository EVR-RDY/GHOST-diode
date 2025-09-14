# Versioning & Release Tracks

We use **two tracks** to make it obvious what is PoC vs. Product:

## Tracks
- **PoC Track:** `v0.x.y-poc`
  - Commodity build with media converters and fiber.
  - Documentation-first; validates feasibility and cost.
- **Product Track:** `v1.x.y`
  - Open hardware device (PCB + enclosure) with manufacturing guidance.

## Tagging Examples
- `v0.1.0-poc` — first public PoC release
- `v0.3.0-poc` — PoC milestone with enclosure notes and throughput tests
- `v1.0.0` — first open hardware release with PCB gerbers and enclosure files

## Hardware Revisions
- PCB revisions use lettered revs: `rev-A`, `rev-B`, etc.
- Enclosure revisions use semantic suffixes: `encl-1.0`, `encl-1.1`

## Branching
- `main` — stable docs and files for the latest tagged release
- Short-lived PR branches: `docs/…`, `hw/…`, `tests/…`
