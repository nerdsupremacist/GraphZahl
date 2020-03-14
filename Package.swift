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

        .library(name: "CContext", targets: ["CContext"])
        
    ],
    dependencies: [
         .package(url: "https://github.com/nerdsupremacist/GraphQL.git", .branch("master")),
         .package(url: "https://github.com/nerdsupremacist/Runtime.git", .branch("master")),

         .package(url: "https://github.com/vapor/vapor.git", from: "4.0.0-beta.4.2"),
         .package(url: "https://github.com/vapor/fluent.git", from: "4.0.0-beta.3"),
         .package(url: "https://github.com/vapor/fluent-kit.git", from: "1.0.0-beta.5"),
    ],
    targets: [
        .target(
            name: "LeoQL",
            dependencies: ["GraphQL", "Runtime", "CContext"]
        ),
        .target(
            name: "VaporLeo",
            dependencies: ["LeoQL", "Vapor"]
        ),
        .target(
            name: "FluentLeo",
            dependencies: ["VaporLeo", "Fluent"]
        ),

        .systemLibrary(name: "CContext"),
    ]
)
