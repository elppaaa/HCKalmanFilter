// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "HCKalmanFilter",
    platforms: [.iOS(.v11)],
    products: [
        .library(
            name: "HCKalmanFilter",
            targets: ["HCKalmanFilter"]
        ),
    ],
    dependencies: [
      .package(url: "https://github.com/Jounce/Surge.git", from: "2.0.0")
    ],
    targets: [
        .target(
            name: "HCKalmanFilter",
            dependencies: [
              .product(name: "Surge", package: "Surge"),
            ]),
    ]
)
