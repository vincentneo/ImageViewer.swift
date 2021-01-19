// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ImageViewer.swift",
    platforms: [
           .macOS(.v10_11),
           .iOS(.v9),
           .tvOS(.v9),
           .watchOS(.v2)
       ],
    products: [
        .library(
            name: "ImageViewer.swift",
            targets: ["ImageViewer.swift"]),
    ],
    dependencies: [
        .package(url: "https://github.com/SDWebImage/SDWebImage.git", from: "5.1.0")
    ],
    targets: [
        .target(
            name: "ImageViewer.swift",
            dependencies: ["SDWebImage"],
            path: "Sources"),
        .testTarget(
            name: "ImageViewer.swiftTests",
            dependencies: ["ImageViewer.swift"]),
    ]
)
