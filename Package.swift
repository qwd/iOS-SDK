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
            url: "https://a.hecdn.net/download/api_sdk/QWeather_iOS_SDK_Pub_V4.14.zip",
            checksum: "800aa14c68f95d4aaaa2a6c04fa53873b8b5c34f98680e40240df9ac942160a5"
        )
    ]
)


