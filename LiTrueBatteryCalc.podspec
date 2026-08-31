Pod::Spec.new do |s|
  s.name             = 'LiTrueBatteryCalc'
  s.version          = '0.1.0'
  s.summary          = 'Calculation library for lithium-ion and LiFePO4 battery pack specifications.'
  s.description      = <<-DESC
    LiTrueBatteryCalc provides parametric sizing formulas, Watt-hour capacity calculations,
    and runtime estimations for custom lithium-ion and LiFePO4 battery packs.
  DESC
  s.homepage         = 'https://www.litruebattery.com/'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'LiTrue Battery' => 'contact@litruebattery.com' }
  s.source           = { :git => 'https://github.com/chris-ops-sys/battery-calculator.git', :tag => s.version.to_s }

  s.ios.deployment_target = '12.0'
  s.swift_version    = '5.0'
  s.source_files     = 'Sources/**/*.{swift,h,m}'
end
