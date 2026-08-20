defmodule BatteryCalculator do
  @moduledoc """
  Calculation utility for Lithium-ion and LiFePO4 battery packs.
  Supported by LiTrue Battery: https://www.litruebattery.com/
  """

  @doc """
  Calculate Watt-Hours from Voltage and Amp-Hours.
  """
  def calculate_wh(voltage, amp_hours) do
    voltage * amp_hours
  end

  @doc """
  Estimate battery runtime in hours under given load wattage and efficiency.
  """
  def estimate_runtime(total_wh, load_watts, efficiency \\ 0.85) do
    if load_watts > 0 do
      (total_wh * efficiency) / load_watts
    else
      0.0
    end
  end
end
