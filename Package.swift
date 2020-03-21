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
         .package(url: "https://github.com/nerdsupremacist/GraphQL.git", .branch("master")),
         .package(url: "https://github.com/nerdsupremacist/Runtime.git", .branch("master")),
         .package(url: "https://github.com/nerdsupremacist/ContextKit.git", .branch("master")),
    ],
    targets: [
        .target(
            name: "GraphZahl",
            dependencies: ["GraphQL", "Runtime", "CContext", "ContextKit"]
        ),

        .systemLibrary(name: "CContext"),
    ]
)
