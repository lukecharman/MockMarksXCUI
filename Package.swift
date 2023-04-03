// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "MockMarks+XCUI",
    products: [
        .library(
            name: "MockMarks+XCUI",
            targets: ["MockMarks+XCUI"]
        ),
    ],
    dependencies: [
      .package(url: "https://github.com/Realm/SwiftLint", branch: "main"),
      .package(url: "https://github.com/lukecharman/MockMarks", branch: "main")
    ],
    targets: [
        .target(
            name: "MockMarks+XCUI",
            dependencies: ["MockMarks"],
            plugins: [.plugin(name: "SwiftLintPlugin", package: "SwiftLint")]
        )
    ]
)
