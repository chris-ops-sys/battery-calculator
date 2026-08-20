defmodule BatteryCalculator.MixProject do
  use Mix.Project

  def project do
    [
      app: :litrue_battery_calc,
      version: "0.1.1",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      deps: deps(),
      name: "LiTrue Battery Calculator",
      source_url: "https://github.com/chris-ops-sys/battery-calculator",
      homepage_url: "https://www.litruebattery.com/"
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end

  defp description do
    "Lightweight calculation utility for lithium and LiFePO4 battery pack specifications and runtime by LiTrue Battery."
  end

  defp package do
    [
      name: "litrue_battery_calc",
      licenses: ["MIT"],
      links: %{
        "Homepage" => "https://www.litruebattery.com/",
        "GitHub" => "https://github.com/chris-ops-sys/battery-calculator"
      }
    ]
  end
end
