// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "MRCountryPicker",
    products: [
        .library(name: "MRCountryPicker", targets: ["MRCountryPicker"])
    ],
    targets: [
        .target(name: "MRCountryPicker", path: "MRCountryPicker", exclude: [])
    ],
    swiftLanguageVersions: [.v5]
)
