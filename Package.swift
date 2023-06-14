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
            url: "https://a.hecdn.net/download/api_sdk/QWeather_iOS_SDK_Pub_V4.16.zip",
            checksum: "057bb21a21872d2ed43532606c489377f0fb0e49e120cba8e541aafc91e41293"
        )
    ]
)
