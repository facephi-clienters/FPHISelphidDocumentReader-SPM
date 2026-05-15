// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FPHISelphidDocumentReader-SPM",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "FPHISelphidDocumentReader-SPM",
            targets: ["FPHISelphidDocumentReader-SPM","selphidDocumentReader"]),
    ],
     dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "git@github.com:facephi-clienters/FPHILicenseManager-SPM.git", .upToNextMajor(from: "0.5.6")),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "FPHISelphidDocumentReader-SPM",  
            dependencies: [
                "selphidDocumentReader",
                "FPHILicenseManager-SPM"
            ]
        ),
        .binaryTarget(name: "selphidDocumentReader", url: "https://facephicorp.jfrog.io/artifactory/spm-pro-fphi/WIDGET/DocumentReader/selphidDocumentReader/2.1.0/selphidDocumentReader.zip",
            checksum: "0d0fcc0c7afa27a2e51ee1e8bdef17d79a9c584a28b90bdb6b6043c3ec9be362") 
        
    ]
)