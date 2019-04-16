// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "Turnstile",
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
