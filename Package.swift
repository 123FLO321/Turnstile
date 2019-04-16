// swift-tools-version:4.1

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
