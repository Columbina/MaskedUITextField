// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "MaskedUITextField",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        .library(
            name: "MaskedUITextField",
            targets: ["MaskedUITextField"])
    ],
    dependencies: [
        .package(url: "https://github.com/Columbina/MaskedFormatter.git",
                 from: "1.0.0")
    ],
    targets: [
        .target(
            name: "MaskedUITextField",
            dependencies: ["MaskedFormatter"]),
        .testTarget(
            name: "MaskedUITextFieldTests",
            dependencies: ["MaskedUITextField"]),
    ]
)
