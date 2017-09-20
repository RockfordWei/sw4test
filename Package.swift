// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "sw4test",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "sw4test",
            targets: ["sw4test"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/PerfectlySoft/Perfect.git", from: "2.0.0"),
        .package(url: "https://github.com/PerfectlySoft/Perfect-Markdown.git", from: "1.0.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "sw4test",
            dependencies: ["PerfectMarkdown", "PerfectLib"]),
        .testTarget(
            name: "sw4testTests",
            dependencies: ["sw4test"]),
    ]
)
