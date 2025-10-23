// swift-tools-version: 6.1

import PackageDescription

let package = Package(
    name: "StandardActions",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v15),
        .tvOS(.v15),
        .watchOS(.v8),
        .macOS(.v12),
        .visionOS(.v1)
    ],
    products: [
        .library(
            name: "StandardActions",
            targets: ["StandardActions"]
        )
    ],
    targets: [
        .target(
            name: "StandardActions",
            resources: [.process("Resources")]
        ),
        .testTarget(
            name: "StandardActionsTests",
            dependencies: ["StandardActions"]
        )
    ]
)
