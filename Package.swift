// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "MockMarksXCUI",
    products: [
        .library(
            name: "MockMarksXCUI",
            targets: ["MockMarksXCUI"]
        ),
    ],
    dependencies: [
      .package(url: "https://github.com/lukecharman/MockMarks", branch: "main")
    ],
    targets: [
        .target(
            name: "MockMarksXCUI",
            dependencies: ["MockMarks"]
        )
    ]
)
