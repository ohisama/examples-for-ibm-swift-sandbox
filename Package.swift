import PackageDescription

let package = Package(
    name: "examples-for-ibm-swift-sandbox",
    dependencies: [
        //.Package(url: "https://github.com/IBM-Swift/Kitura.git", majorVersion: 0, minor: 19),
        .Package(url: "https://github.com/IBM-Swift/Kitura-net.git", majorVersion: 0, minor: 17),
        .Package(url: "https://github.com/IBM-Swift/SwiftyJSON.git", majorVersion: 8),
        .Package(url: "https://github.com/IBM-Swift/Kitura-TemplateEngine.git", majorVersion: 0, minor: 16)
    ]
)
