// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.12.1-39-g03310be29"

let package = Package(
    name: "face_tracker_lite",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "face_tracker_lite",
            targets: [
                "face_tracker_lite",
                "face_tracker_lite_sdk_core",
                "face_tracker_lite_effect_player",
                "face_tracker_lite_scripting"
            ]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/sdk-banuba/sdk_core.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/effect_player.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/scripting.git",
            .exact(bnbPackageVersion)
        ),
    ],
    targets: [
        .binaryTarget(
            name: "face_tracker_lite",
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.12.1-39-g03310be29/face_tracker_lite.zip",
            checksum: "4ebe9ced5d8a1731e220250160b471a38e7cfd3806a7905d5e8c120afba314ac"
        ),
        .target(
            name: "face_tracker_lite_sdk_core",
            dependencies: [
                .product(
                    name: "sdk_core",
                    package: "sdk_core"
                ),
            ]
        ),
        .target(
            name: "face_tracker_lite_effect_player",
            dependencies: [
                .product(
                    name: "effect_player",
                    package: "effect_player"
                ),
            ]
        ),
        .target(
            name: "face_tracker_lite_scripting",
            dependencies: [
                .product(
                    name: "scripting",
                    package: "scripting"
                ),
            ]
        ),
    ]
)
