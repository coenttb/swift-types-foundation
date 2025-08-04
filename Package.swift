// swift-tools-version:6.0

import PackageDescription

extension String {
    static let swiftTypesFoundation: Self = "TypesFoundation"
}

extension Target.Dependency {
    static var swiftTypesFoundation: Self { .target(name: .swiftTypesFoundation) }
}

extension Target.Dependency {
    static var builders: Self { .product(name: "Builders", package: "swift-builders") }
    static var emailAddress: Self { .product(name: "EmailAddress", package: "swift-emailaddress-type") }
    static var domain: Self { .product(name: "Domain", package: "swift-domain-type") }
    static var casePaths: Self { .product(name: "CasePaths", package: "swift-case-paths") }
    static var dependencies: Self { .product(name: "Dependencies", package: "swift-dependencies") }
    static var dependenciesTestSupport: Self { .product(name: "DependenciesTestSupport", package: "swift-dependencies") }
    static var foundationExtensions: Self { .product(name: "FoundationExtensions", package: "swift-foundation-extensions") }
    static var translating: Self { .product(name: "Translating", package: "swift-translating") }
    static var issueReporting: Self { .product(name: "IssueReporting", package: "xctest-dynamic-overlay") }
    static var urlRouting: Self { .product(name: "URLRouting", package: "swift-url-routing") }
    static var urlRoutingTranslating: Self { .product(name: "URLRoutingTranslating", package: "swift-url-routing-translating") }
    static var urlFormCoding: Self { .product(name: "URLFormCoding", package: "swift-url-form-coding") }
    static var urlFormCodingURLRouting: Self { .product(name: "URLFormCodingURLRouting", package: "swift-url-form-coding-url-routing") }
    static var urlMultipartFormCodingURLRouting: Self { .product(name: "URLMultipartFormCodingURLRouting", package: "swift-url-multipart-form-coding-url-routing") }
    static var dateParsing: Self { .product(name: "DateParsing", package: "swift-date-parsing") }
    static var unixEpochParsing: Self { .product(name: "UnixEpochParsing", package: "swift-date-parsing") }
}

let package = Package(
    name: "swift-types-foundation",
    platforms: [
        .macOS(.v14),
        .iOS(.v17)
    ],
    products: [
        .library(
            name: .swiftTypesFoundation,
            targets: [
                .swiftTypesFoundation,
            ]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/coenttb/swift-builders", from: "0.0.1"),
        .package(url: "https://github.com/coenttb/swift-date-parsing", from: "0.1.0"),
        .package(url: "https://github.com/coenttb/swift-domain-type", from: "0.0.1"),
        .package(url: "https://github.com/coenttb/swift-emailaddress-type", from: "0.0.1"),
        .package(url: "https://github.com/coenttb/swift-foundation-extensions", from: "0.1.0"),
        .package(url: "https://github.com/coenttb/swift-translating", from: "0.0.1"),
        .package(url: "https://github.com/coenttb/swift-url-form-coding", from: "0.0.1"),
        .package(url: "https://github.com/coenttb/swift-url-form-coding-url-routing", from: "0.0.1"),
        .package(url: "https://github.com/coenttb/swift-url-routing-translating", from: "0.0.1"),
        .package(url: "https://github.com/coenttb/swift-url-multipart-form-coding-url-routing", from: "0.0.1"),
        .package(url: "https://github.com/pointfreeco/swift-case-paths", from: "1.5.6"),
        .package(url: "https://github.com/pointfreeco/swift-dependencies", from: "1.9.2"),
        .package(url: "https://github.com/pointfreeco/xctest-dynamic-overlay", from: "1.4.3"),
        .package(url: "https://github.com/pointfreeco/swift-url-routing", from: "0.6.2"),
    ],
    targets: [
        .target(
            name: .swiftTypesFoundation,
            dependencies: [
                .builders,
                .casePaths,
                .dependencies,
                .foundationExtensions,
                .translating,
                .issueReporting,
                .urlRouting,
                .urlRoutingTranslating,
                .emailAddress,
                .domain,
                .dateParsing,
                .unixEpochParsing,
                .urlFormCoding,
                .urlFormCodingURLRouting,
                .urlMultipartFormCodingURLRouting
            ]
        ),
        .testTarget(
            name: .swiftTypesFoundation.tests,
            dependencies: [
                .swiftTypesFoundation,
                .dependenciesTestSupport
            ]
        ),
    ],
    swiftLanguageModes: [.v6]
)

extension String { var tests: Self { self + " Tests" } }
