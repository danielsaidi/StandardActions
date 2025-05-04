// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "ButtonKit",
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
            name: "ButtonKit",
            targets: ["ButtonKit"]
        )
    ],
    targets: [
        .target(
            name: "ButtonKit",
            resources: [.process("Resources")]
        ),
        .testTarget(
            name: "ButtonKitTests",
            dependencies: ["ButtonKit"]
        )
    ]
)
