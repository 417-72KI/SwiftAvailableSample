// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "AvailableSample",
    platforms: [.macOS(.v12), .iOS(.v14)],
    products: [
        .library(
            name: "AvailableSample",
            targets: ["AvailableSample"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "AvailableSample",
            dependencies: ["Q1", "Q2", "Q3"]),
        .target(name: "Q1"),
        .target(name: "Q2"),
        .target(name: "Q3"),
        .testTarget(
            name: "AvailableSampleTests",
            dependencies: ["AvailableSample"]),
    ]
)
