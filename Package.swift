import PackageDescription

let package = Package(
    name: "examples-for-ibm-swift-sandbox",
    dependencies: [
        .Package(url: "https://github.com/IBM-Swift/SwiftyJSON.git", majorVersion: 8),
        .Package(url: "https://github.com/IBM-Swift/BlueCryptor.git", majorVersion: 0, minor: 2),
        .Package(url: "https://github.com/IBM-Swift/HeliumLogger.git", majorVersion: 0, minor: 9),
        .Package(url: "https://github.com/IBM-Swift/Kitura.git", majorVersion: 0, minor: 17)
    ]
)
