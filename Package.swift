// swift-tools-version:4.1

import PackageDescription

let package = Package(
    name: "Turnstile",
    products: [
        .library(name: "Turnstile", targets: ["Turnstile"]),
        .library(name: "TurnstileCrypto", targets: ["TurnstileCrypto"]),
        .library(name: "TurnstileWeb", targets: ["TurnstileWeb"])
    ],
    targets: [
        .target(
            name: "Turnstile", 
            dependencies: ["TurnstileCrypto"]
        ),
        .target(
            name: "TurnstileCrypto", 
            dependencies: []
        ),
        .target(
            name: "TurnstileWeb", 
            dependencies: ["Turnstile"]
        ),    
    ]
)
