// swift-tools-version:5.5

import PackageDescription

let package = Package(
  name: "Tun2Socks",
  products: [
    .library(name: "Tun2Socks", targets: ["Tun2Socks"])
  ],
  targets: [
    .target(name: "Tun2Socks", dependencies: ["Tun2SocksFramework"]),
    .binaryTarget(
      name: "Tun2SocksFramework",
      url: "https://github.com/AppleClash/T2SKit/releases/download/1.3.0/Tun2SocksFramework.xcframework.zip",
      checksum: "7f30708b3c194884f6383983dd5d8ae0d67b5adc77c6ce75cb0efb1ad43d6296"
    )
  ]
)
