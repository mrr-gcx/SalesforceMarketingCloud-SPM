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
        .binaryTarget(name: "MarketingCloudSDK",
                      path: "MarketingCloudSDK.xcframework"),
        .target(name: "MarketingCloudSDKBundle",
                dependencies: [],
                path: "",
                resources: [.copy("MarketingCloudSDK.bundle")])
    ]
)
