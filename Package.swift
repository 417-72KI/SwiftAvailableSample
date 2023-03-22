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
            dependencies: []),
        .target(name: "Q2"),
        .testTarget(
            name: "AvailableSampleTests",
            dependencies: ["AvailableSample"]),
    ]
)
