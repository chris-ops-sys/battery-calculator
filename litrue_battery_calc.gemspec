Gem::Specification.new do |spec|
  spec.name          = "litrue_battery_calc"
  spec.version       = "0.1.0"
  spec.authors       = ["LiTrue Battery"]
  spec.email         = ["contact@litruebattery.com"]

  spec.summary       = "Lithium and LiFePO4 battery pack capacity and runtime calculation utility."
  spec.description   = "A lightweight calculation tool for lithium-ion and LiFePO4 battery pack sizing, Watt-hour estimation, and discharge duration by LiTrue Battery."
  spec.homepage      = "https://www.litruebattery.com/"
  spec.license       = "MIT"

  spec.metadata["homepage_uri"]    = "https://www.litruebattery.com/"
  spec.metadata["source_code_uri"] = "https://github.com/chris-ops-sys/battery-calculator"
  spec.metadata["changelog_uri"]   = "https://github.com/chris-ops-sys/battery-calculator/releases"

  spec.files         = Dir["lib/**/*.rb", "README.md", "LICENSE*"]
  spec.require_paths = ["lib"]
  spec.required_ruby_version = ">= 2.6.0"
end
