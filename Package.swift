// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "ReadiumOPDS",
    platforms: [
        .macOS(.v10_10), .iOS(.v12), .tvOS(.v9), .watchOS(.v3)
    ],
    products: [
        .library(name: "ReadiumOPDS", targets: ["ReadiumOPDS"]),
    ],
    dependencies: [
        .package(url: "https://github.com/lololo/r2-shared-swift.git", .branch("develop")),
        .package(url: "https://github.com/cezheng/Fuzi.git", from: "3.1.2"),
    ],
    targets: [
        .target(name: "ReadiumOPDS",
                dependencies: [ "R2Shared",
                                "Fuzi"],
                path: "readium-opds"
        ),
    ]
)


