// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FPHISelphidDocumentReader-SPM",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "FPHISelphidDocumentReader-SPM",
            targets: ["FPHISelphidDocumentReader-SPM","selphidDocumentReader"]),
    ],
     dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/facephi-clienters/FPHILicenseManager-SPM.git", .upToNextMajor(from: "0.5.6")),
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
        
        .binaryTarget(name: "selphidDocumentReader", url: "https://facephicorp.jfrog.io/artifactory/spm-pro-fphi/WIDGET/DocumentReader/FPHISelphidDocumentReader/3.3.13/selphidDocumentReader.zip",
            checksum: "a4cbbc711822f681d10a3ae4db48baddcbb177777d492acf806ff48370ef75d8") 
        
    ]
)