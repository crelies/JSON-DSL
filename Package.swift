// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "JSON-DSL",
    products: [
        .library(
            name: "JSON-DSL",
            targets: ["JSON-DSL"])
    ],
    targets: [
        .target(name: "JSON-DSL"),
        .testTarget(
            name: "JSON-DSLTests",
            dependencies: ["JSON-DSL"])
    ]
)
