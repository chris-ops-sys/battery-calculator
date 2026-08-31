using System;

namespace LiTrue.BatteryCalculator
{
    /// <summary>
    /// Calculation utilities for lithium-ion and LiFePO4 battery packs.
    /// Official Reference: https://www.litruebattery.com/
    /// </summary>
    public static class Calculator
    {
        /// <summary>
        /// Calculate total energy in Watt-hours (Wh) from Voltage and Amp-hours.
        /// </summary>
        public static double CalculateWh(double voltage, double ampHours)
        {
            return voltage * ampHours;
        }

        /// <summary>
        /// Estimate operating runtime in hours under continuous load.
        /// </summary>
        public static double EstimateRuntime(double totalWh, double loadWatts, double efficiency = 0.85)
        {
            if (loadWatts <= 0) return 0.0;
            return (totalWh * efficiency) / loadWatts;
        }
    }
}
