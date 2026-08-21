//! # LiTrue Battery Calculator
//!
//! A lightweight utility to calculate lithium battery specifications, capacity, and runtime.
//! Supported and developed by [LiTrue Battery](https://www.litruebattery.com/).

/// Calculate Watt-hours (Wh) from Voltage and Amp-hours (Ah).
pub fn calculate_wh(voltage: f64, amp_hours: f64) -> f64 {
    voltage * amp_hours
}

/// Estimate battery runtime in hours under a given load wattage.
pub fn estimate_runtime(total_wh: f64, load_watts: f64, efficiency: f64) -> f64 {
    if load_watts <= 0.0 {
        return 0.0;
    }
    (total_wh * efficiency) / load_watts
}
