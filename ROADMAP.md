# Ghost Diode Roadmap

This roadmap lays out the evolution of the **EVR:RDY Ghost Diode** from a simple **Proof-of-Concept (PoC)** to a fully **open hardware product** and eventually a **certified industrial data diode**.

---

## 🚦 Stage 0 — Current Status (v0.1.0-poc)
- **State:** Hardware-first PoC
- **Focus:** Commodity parts (fiber media converters, unmanaged switch, single-strand fiber)
- **Deliverables:**
  - BOM published
  - Wiring notes and loopback/negative test procedures
  - Validation script (`validate_one_way.sh`)
  - Safety & risk documentation
  - CERN OHL v2-S licensing applied to repo

---

## 🧪 Stage 1 — PoC Iterations (v0.2.0-poc → v0.3.0-poc)
**Goal:** Refine the PoC to make it repeatable, verifiable, and easy for others to build.

- Publish enclosure and mounting guidance
- Add tamper-evident sealing options
- Collect repeatable throughput benchmarks (e.g., syslog/NetFlow/Zeek JSON export)
- Document switch configurations for popular models (Netgear, TP-Link, Cisco SPAN)
- Expand validation tooling:
  - Multi-protocol testing (syslog, JSON, NetFlow, Zeek)
  - Negative test automation (loopback detection)
- Create “Known Good Build” reference images with photos + validation logs

---

## 🏗️ Stage 2 — Open Hardware Product Design (v1.0.0 → v1.x)
**Goal:** Transition Ghost Diode from a COTS-based PoC to a **dedicated open hardware product**.

- **PCB Development:**
  - KiCad designs for TX-only optical board
  - Eliminate reliance on off-the-shelf media converters
  - Provide Gerbers, schematics, and BOMs in repo
- **Enclosure Design:**
  - 3D-printable or CNC-ready enclosure files (STL/STEP)
  - Tamper-evident design features
  - RED/BLACK physical labeling built-in
- **Manufacturing:**
  - Assembly checklist for small batch builds
  - Cost model for 10–100 unit production runs
- **Documentation:**
  - Hardware “datasheet” (throughput, supported optics, tested use cases)
  - Full replication guide (lab build → manufacturing)

---

## 🛡️ Stage 3 — Certification Pathfinding (v2.0.0+)
**Goal:** Prepare Ghost Diode for compliance with industrial security and safety standards.

- **Gap Analysis:**
  - Map Ghost Diode features against IEC 62443-4-2 (component security requirements)
  - Map to NERC CIP-005 (Electronic Security Perimeter)
  - Identify gaps vs. Common Criteria EAL4+ requirements
- **Design Hardening:**
  - Add tamper-proof casing and seals
  - Test against covert channels (timing, EMI leakage)
  - Fail-closed design for power loss or optical failure
- **Independent Testing:**
  - Engage university or lab partners for third-party validation
  - Document reproducible security tests
- **Certification Prep:**
  - Draft security target for Common Criteria
  - Explore IEC 62443 certification process
  - Plan path to NIAP / CSfC Components List inclusion (for DoD/IC use)

---

## 📜 Stage 4 — Certified Industrial Release (v3.0.0+)
**Goal:** Achieve formal certification as a recognized industrial data diode.

- Pursue **Common Criteria EAL4+ certification** through an accredited lab
- Seek **IEC 62443-4-2 certification** for industrial component security
- Ensure compliance with **NERC CIP** requirements for North American utilities
- Apply for **NIAP/CSfC listing** (for U.S. government/DoD environments)
- Provide certified product documentation with assurance cases
- Support regulator audits and site deployments

---

## 🌍 Long-Term Vision
Ghost Diode becomes:
- A **reference open hardware design** for affordable one-way transfer in ICS/OT
- A **training and education tool** for labs and universities
- A **certified alternative** to expensive proprietary diodes for utilities and municipalities
- A **community-driven project** ensuring transparency, reproducibility, and accessibility

---

## 🗺️ Summary Roadmap by Milestones
- **v0.x (PoC):** Commodity parts, wiring, validation scripts
- **v1.x (Open Hardware Product):** PCB + enclosure + manufacturing files
- **v2.x (Certification Prep):** Hardened design, mapped to IEC/NERC/CC standards
- **v3.x (Certified Diode):** CC EAL4+, IEC 62443, NERC CIP, NIAP/CSfC listing
