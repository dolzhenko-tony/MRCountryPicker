// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "MRCountryPicker",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(name: "MRCountryPicker",
                 targets: ["MRCountryPicker"])
    ],
    targets: [
      .target(name: "MRCountryPicker",
              dependencies: [],
              path: "MRCountryPicker",
              exclude: [],
              resources: [.process("Assets/SwiftCountryPicker.bundle")])
    ],
    swiftLanguageVersions: [.v5]
)
