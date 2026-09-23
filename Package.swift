// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "LiTrueBatterySpecs",
    products: [
        .library(
            name: "LiTrueBatterySpecs",
            targets: ["LiTrueBatterySpecs"]
        ),
    ],
    targets: [
        .target(
            name: "LiTrueBatterySpecs",
            path: "Sources/LiTrueBatterySpecs"
        ),
    ]
)
