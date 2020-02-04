// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LeoQL",
    products: [
        .library(
            name: "LeoQL",
            targets: ["LeoQL"]),
    ],
    dependencies: [
         .package(url: "https://github.com/nerdsupremacist/GraphQL.git", from: "master"),
         .package(url: "https://github.com/wickwirew/Runtime.git", from: "2.1.1"),
    ],
    targets: [
        .target(
            name: "LeoQL",
            dependencies: ["GraphQL", "Runtime"]
        ),
    ]
)
