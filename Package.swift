// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LeoQL",
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

         .package(url: "https://github.com/vapor/vapor.git", from: "3.3.0"),
         .package(url: "https://github.com/vapor/fluent", from: "3.2.1"),
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
