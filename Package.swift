// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LeoQL",
    platforms: [
       .macOS(.v10_15)
    ],
    products: [
        .library(name: "LeoQL",
                 targets: ["LeoQL"]),

        .library(name: "VaporLeo",
                 targets: ["VaporLeo"]),

        .library(name: "FluentLeo",
                 targets: ["FluentLeo"]),
    ],
    dependencies: [
         .package(url: "https://github.com/nerdsupremacist/GraphQL.git", .branch("master")),
         .package(url: "https://github.com/nerdsupremacist/Runtime.git", .branch("master")),

         .package(url: "https://github.com/vapor/vapor.git", from: "4.0.0-beta."),
         .package(url: "https://github.com/vapor/fluent", from: "4.0.0-beta."),
    ],
    targets: [
        .target(
            name: "LeoQL",
            dependencies: ["GraphQL", "Runtime"]
        ),
        .target(
            name: "VaporLeo",
            dependencies: ["LeoQL", "Vapor"]
        ),
        .target(
            name: "FluentLeo",
            dependencies: ["VaporLeo", "Fluent"]
        ),
    ]
)
