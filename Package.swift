// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GraphZahl",
    platforms: [
       .macOS(.v10_15)
    ],
    products: [
        .library(name: "GraphZahl",
                 targets: ["GraphZahl"]),
    ],
    dependencies: [
        .package(url: "https://github.com/nerdsupremacist/GraphQL.git", from: "0.12.1-beta.2"),
        .package(url: "https://github.com/nerdsupremacist/Runtime.git", from: "2.1.2-beta.1"),
        .package(url: "https://github.com/nerdsupremacist/ContextKit.git", from: "0.2.0"),
    ],
    targets: [
        .target(
            name: "GraphZahl",
            dependencies: ["GraphQL", "Runtime", "CContext", "ContextKit"]
        ),

        .systemLibrary(name: "CContext"),
    ]
)
