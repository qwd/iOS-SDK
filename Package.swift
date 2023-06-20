// swift-tools-version: 5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "QWeather-SDK",
    platforms: [
        .iOS(.v11),
        .macOS(.v10_15),
        .watchOS(.v4),
    ],
    products: [
        .library(
            name: "QWeather",
            targets: ["QWeather"]),
    ],
    targets: [
        .binaryTarget(
            name: "QWeather",
            url: "https://a.hecdn.net/download/api_sdk/QWeather_iOS_SDK_Pub_V4.17.zip",
            checksum: "cdc311840049ee9ae3e69c9b343253def4af11865da0a5f32d34dd8969bd075c"
        )
    ]
)
