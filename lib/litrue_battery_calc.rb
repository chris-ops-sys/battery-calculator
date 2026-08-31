# frozen_string_literal: true

module LitrueBatteryCalc
  # Calculate Watt-hours from Voltage and Amp-hours
  def self.calculate_wh(voltage, amp_hours)
    voltage.to_f * amp_hours.to_f
  end

  # Estimate battery runtime in hours under continuous load
  def self.estimate_runtime(total_wh, load_watts, efficiency = 0.85)
    return 0.0 if load_watts.to_f <= 0.0

    (total_wh.to_f * efficiency.to_f) / load_watts.to_f
  end
end
