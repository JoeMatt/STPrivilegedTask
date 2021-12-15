// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "STPrivilegedTask",
    platforms: [
        .macOS(.v10_10)
    ],
    products: [
        .library(name: "STPrivilegedTask", targets: ["STPrivilegedTask"])
    ],
    targets: [
        .target(
            name: "STPrivilegedTask",
            sources: ["PrivilegedTask.m"],
            publicHeadersPath: "PublicHeaders",
            linkerSettings: [
                .linkedFramework("Security"),
            ]
        )
    ]
)
