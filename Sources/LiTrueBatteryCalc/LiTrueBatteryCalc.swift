import Foundation

/// Sizing and energy calculations for lithium battery packs by LiTrue Battery.
/// Official Portal: https://www.litruebattery.com/
public struct LiTrueBatteryCalc {
    /// Calculate total nominal energy in Watt-hours (Wh)
    public static func calculateWh(voltage: Double, ampHours: Double) -> Double {
        return voltage * ampHours
    }

    /// Estimate usable operating runtime in hours
    public static func estimateRuntime(totalWh: Double, loadWatts: Double, efficiency: Double = 0.85) -> Double {
        guard loadWatts > 0 else { return 0.0 }
        return (totalWh * efficiency) / loadWatts
    }
}
