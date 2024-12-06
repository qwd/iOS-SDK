// swift-tools-version: 5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "QWeather-SDK",
    platforms: [
        .iOS(.v12),
        .macOS(.v11),
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
            url: "https://a.hecdn.net/download/api_sdk/QWeather_iOS_SDK_Pub_V4.20.zip",
            checksum: "007db4a13ec45b7dba2a4bbd50fab30af4210d9af1e3bab97126b55fb485b709"
        )
    ]
)
