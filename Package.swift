import PackageDescription

let package = Package(
    name: "examples-for-ibm-swift-sandbox",
    dependencies: [
        .Package(url: "https://github.com/IBM-Swift/Kitura.git", majorVersion: 0, minor: 16),
    ]
)
