// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "YahooMobileSDK",
    platforms: [.iOS(.v10)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "YahooMobileSDK",
            targets: ["YahooAdsResources"]),
    ],
    dependencies: [
        .package(url: "https://github.com/flurry/FlurrySwiftPackage", "12.1.1"..<"12.2.0"),
    ],
    targets: [
        .target(name: "YahooAdsResources",
                dependencies: ["YahooAds",
                    .product(name: "Flurry", package: "FlurrySwiftPackage")],
                resources: [ .process("YahooAdsResources.bundle") ]),
        .binaryTarget(name: "YahooAds",
                      url: "https://artifactory.yahooinc.com/artifactory/ios-yahoo-ads-sdk/ios-yahoo-mobile-sdk/1.3.0/ios-yahoo-mobile-sdk-cocoapods-1.3.0.zip",
                      checksum: "2724b5f9dc26cc4028248f5e7fa8c7bd0ecfd4e76b9c462aaae22fc14dee2841")

    ]
)
