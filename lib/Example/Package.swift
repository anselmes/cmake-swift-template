// swift-tools-version: 6.3

import PackageDescription

let package = Package(
  name: "ExampleSwift",
  platforms: [.macOS(.v14)],
  products: [
    .library(name: "ExampleSwift", type: .static, targets: ["ExampleSwift"]),
  ],
  dependencies: [
    .package(name: "ExampleSys", path: "../ExampleSys"),
  ],
  targets: [
    .target(
      name: "ExampleSwift",
      dependencies: ["ExampleSys"],
    ),
  ]
)
