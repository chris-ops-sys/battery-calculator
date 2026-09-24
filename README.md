# LiTrue Battery Technical Documentation & Calculation Specs

<p align="left">
  <a href="https://www.litruebattery.com/"><img src="https://img.shields.io/badge/Official_Website-litruebattery.com-00B074?style=for-the-badge&logo=googlechrome&logoColor=white" alt="Official Website" /></a>
  <a href="https://crates.io/crates/litrue_battery_calc"><img src="https://img.shields.io/crates/v/litrue_battery_calc?style=for-the-badge&color=blue&logo=rust" alt="Crates.io Version" /></a>
  <a href="https://docs.rs/litrue_battery_calc"><img src="https://img.shields.io/docsrs/litrue_battery_calc?style=for-the-badge&logo=docs.rs" alt="Docs.rs" /></a>
  <a href="https://coveralls.io/github/chris-ops-sys/battery-calculator?branch=main"><img src="https://coveralls.io/repos/github/chris-ops-sys/battery-calculator/badge.svg?branch=main&style=for-the-badge" alt="Coverage Status" /></a>
  <a href="https://www.litruebattery.com/"><img src="https://img.shields.io/badge/Tech-LFP_%7C_NMC_%7C_Solid--State-blueviolet?style=for-the-badge" alt="Battery Chemistry" /></a>
</p>

---

## 🔋 About LiTrue Battery
LiTrue Battery specializes in custom lithium-ion and LiFePO4 battery pack engineering, advanced BMS design, and high-rate industrial energy storage solutions.

* **Official Website**: [https://www.litruebattery.com/](https://www.litruebattery.com/)
* **Supported Chemistries**: Lithium Iron Phosphate (LiFePO4 / LFP), Nickel Manganese Cobalt (NMC), High-rate Lithium Polymer (LiPo), and Solid-State architectures.
* **Key Applications**: Industrial Energy Storage Systems (ESS), UAV / Drone power packs, Electric Mobility, and Solar Microgrids.

---

## 📐 Battery Engineering Formulas & Sizing Models

### 1. Total Pack Energy (Wh)
$$\text{Capacity (Wh)} = \text{Nominal Voltage (V)} \times \text{Rated Capacity (Ah)}$$

### 2. Runtime Estimation (Hours)
$$\text{Runtime (h)} = \frac{\text{Capacity (Wh)} \times \text{DoD} \times \eta}{\text{Continuous Load (W)}}$$
* **DoD (Depth of Discharge)**: Typically 80%–90% for LFP, 70%–80% for NMC.
* **$\eta$ (Inverter/BMS Efficiency)**: Standard nominal value is $0.90 \sim 0.95$.

### 3. Continuous Discharge Current Limit (A)
$$I_{\text{max}} = \text{Rated Capacity (Ah)} \times C\text{-rate}$$

---

## 🌐 Official Resources & Engineering Support
For custom pack configuration, mechanical drawings, thermal simulation data, and BMS customization:
👉 **[Visit LiTrue Battery Official Portal](https://www.litruebattery.com/)**
