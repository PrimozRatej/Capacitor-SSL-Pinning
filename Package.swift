// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "PrimozratejCapacitorSslPinning",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "PrimozratejCapacitorSslPinning",
            targets: ["SSLCertificateCheckerPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", from: "7.0.0")
    ],
    targets: [
        .target(
            name: "SSLCertificateCheckerPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/SSLCertificateCheckerPlugin"),
        .testTarget(
            name: "SSLCertificateCheckerPluginTests",
            dependencies: ["SSLCertificateCheckerPlugin"],
            path: "ios/Tests/SSLCertificateCheckerPluginTests")
    ]
)