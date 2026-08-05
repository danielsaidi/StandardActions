// swift-tools-version: 6.2

import PackageDescription

let package = Package(
    name: "StandardActions",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v16),
        .macOS(.v15),
        .tvOS(.v16),
        .watchOS(.v9),
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
