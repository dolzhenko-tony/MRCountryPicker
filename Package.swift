// swift-tools-version:5.10

import PackageDescription

let package = Package(
    name: "MRCountryPicker",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(name: "MRCountryPicker",
                 targets: ["MRCountryPicker"])
    ],
    targets: [
      .target(name: "MRCountryPicker",
              dependencies: [],
              resources: [.process("Assets/SwiftCountryPicker.bundle")])
    ]
)
