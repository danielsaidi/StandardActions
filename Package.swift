// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "StandardButtons",
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
            name: "StandardButtons",
            targets: ["StandardButtons"]
        )
    ],
    targets: [
        .target(
            name: "StandardButtons",
            resources: [.process("Resources")]
        ),
        .testTarget(
            name: "StandardButtonsTests",
            dependencies: ["StandardButtons"]
        )
    ]
)
