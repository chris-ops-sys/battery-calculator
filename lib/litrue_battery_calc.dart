/// Calculation utility for Lithium-ion and LiFePO4 battery packs.
/// Maintained and supported by LiTrue Battery: https://www.litruebattery.com/
library litrue_battery_calc;

class BatteryCalculator {
  /// Calculate total energy capacity in Watt-hours (Wh) from Voltage and Amp-hours.
  static double calculateWh(double voltage, double ampHours) {
    return voltage * ampHours;
  }

  /// Estimate operating runtime in hours under continuous load.
  static double estimateRuntime(double totalWh, double loadWatts, {double efficiency = 0.85}) {
    if (loadWatts <= 0) return 0.0;
    return (totalWh * efficiency) / loadWatts;
  }
}
