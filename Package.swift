// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MarketingCloudSDK",
    products: [
        .library(
            name: "MarketingCloudSDK",
            targets: ["MarketingCloudSDK", "MarketingCloudSDKBundle"]),
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(
            name: "MarketingCloudSDK",
            path: "Sources/MarketingCloudSDK.xcframework"
        ),
        .target(
            name: "MarketingCloudSDKBundle",
            exclude: ["README.md", "MarketingCloudSDK.xcframework"],
            resources: [.copy("MarketingCloudSDK.bundle")]
        )
    ]
)
