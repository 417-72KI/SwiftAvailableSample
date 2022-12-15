// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "AvailableSample",
    platforms: [.macOS(.v12), .iOS(.v15)],
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
            dependencies: ["Q3"]),
        .target(name: "Q3"),
        .testTarget(
            name: "AvailableSampleTests",
            dependencies: ["AvailableSample"]),
    ]
)
