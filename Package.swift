// swift-tools-version:5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GCodeCoder",
    products: [
        .library(
            name: "GCodeCoder",
            targets: ["GCodeCoder"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "GCodeCoder",
            dependencies: []
        ),
        .testTarget(
            name: "GCodeCoderTests",
            dependencies: ["GCodeCoder"]
        ),
    ]
)
