// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "clopenssl",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "clopenssl",
            targets: ["clopenssl"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "clopenssl",
            dependencies: ["openssl"]),
        .binaryTarget(name: "openssl",
                      url: "https://github.com/julepka/openssl-apple/releases/download/v.1.1.1080201/openssl-dynamic-xcframework.zip",
                      // swift package compute-checksum some.xcframework.zip from package directory
                      checksum: "db7d3894d9ca08b8184a8c7cf0c6d629e3b345b059b1bcb827f2b8a49d9d9fce"),
    ]
)
