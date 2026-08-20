<?php

namespace LiTrue\BatteryCalc;

class Calculator
{
    /**
     * Calculate Watt-hours from Voltage and Amp-hours
     */
    public static function calculateWh(float $voltage, float $ampHours): float
    {
        return $voltage * $ampHours;
    }

    /**
     * Estimate battery run time in hours
     */
    public static function estimateRuntime(float $totalWh, float $loadWatts, float $efficiency = 0.85): float
    {
        if ($loadWatts <= 0) {
            return 0.0;
        }
        return ($totalWh * $efficiency) / $loadWatts;
    }
}
