# swift-types-foundation

[![Swift](https://img.shields.io/badge/Swift-6.0-orange.svg)](https://swift.org)
[![Platforms](https://img.shields.io/badge/Platforms-macOS%2014%2B%20|%20iOS%2017%2B-lightgray.svg)]()
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](LICENSE)
[![CI](https://github.com/coenttb/swift-types-foundation/workflows/CI/badge.svg)](https://github.com/coenttb/swift-types-foundation/actions/workflows/ci.yml)

A consolidated Swift library bundling essential type-safe packages for domain modeling and data handling.

## Table of Contents

- [Overview](#overview)
- [Included Libraries](#included-libraries)
- [Installation](#installation)
- [Quick Start](#quick-start)
- [Related Packages](#related-packages)
- [Requirements](#requirements)
- [License](#license)
- [Contributing](#contributing)

## Overview

`swift-types-foundation` provides a single dependency for libraries that need to declare strongly-typed models. Instead of managing multiple individual type-safe package dependencies, import this foundation package to access a curated collection of domain modeling utilities, including email addresses, domains, date parsing, URL routing, translation support, and more.

## Included Libraries

This foundation consolidates type-safe packages that are commonly used for domain modeling:

### **Core Type-Safe Models**

- **[EmailAddress](https://github.com/coenttb/swift-emailaddress-type)** - Type-safe email address handling with RFC standard validation
- **[Domain](https://github.com/coenttb/swift-domain-type)** - Type-safe domain name handling with multi-RFC standard support

### **Date & Time Types**

- **[DateParsing](https://github.com/coenttb/swift-date-parsing)** - Date parsing for RFC 2822, RFC 5322, and Unix epoch timestamps
- **[UnixEpochParsing](https://github.com/coenttb/swift-date-parsing)** - Unix epoch timestamp parsing utilities
- **[FoundationExtensions](https://github.com/coenttb/swift-foundation-extensions)** - Date manipulation, validation, and formatting extensions

### **URL & Form Types**

- **[URLRouting](https://github.com/pointfreeco/swift-url-routing)** - Type-safe URL routing library
- **[URLRoutingTranslating](https://github.com/coenttb/swift-url-routing-translating)** - Multi-language URL pattern support for routing
- **[URLFormCoding](https://github.com/coenttb/swift-url-form-coding)** - Type-safe URL form encoding and decoding

### **Language & Localization Types**

- **[Translating](https://github.com/coenttb/swift-translating)** - Translation and localization framework

### **Utilities & Infrastructure**

- **[Builders](https://github.com/coenttb/swift-builders)** - Result builders for declarative content creation
- **[Dependencies](https://github.com/pointfreeco/swift-dependencies)** - Dependency management for controllable and testable applications
- **[CasePaths](https://github.com/pointfreeco/swift-case-paths)** - Key path-like functionality for enum cases
- **[IssueReporting](https://github.com/pointfreeco/xctest-dynamic-overlay)** - Runtime issue reporting and debugging utilities

## Installation

To use **swift-types-foundation** in your project, add it to your `Package.swift` dependencies:

```swift
dependencies: [
    .package(url: "https://github.com/coenttb/swift-types-foundation.git", from: "0.0.1")
]
```

Then add it to your target dependencies:

```swift
.target(
    name: "YourTarget",
    dependencies: [
        .product(name: "TypesFoundation", package: "swift-types-foundation")
    ]
)
```

## Quick Start

Instead of importing multiple individual packages:

```swift
import EmailAddress
import Domain
import DateParsing
import URLRouting
import Translating
import Builders
// ... and many more
```

Simply import the foundation:

```swift
import TypesFoundation

// All type-safe functionality is now available:
let email = try EmailAddress("user@example.com")
let domain = try Domain("example.com")
let date = Date.now + 1.day
let route = URLRoute<MyRoute>()
```

## Related Packages

### Type-Focused Libraries Using This Foundation

- **[swift-mailgun-types](https://github.com/coenttb/swift-mailgun-types)**: A Swift package with foundational types for Mailgun.
- **[swift-html-types](https://github.com/coenttb/swift-html-types)**: A Swift package with foundational types for HTML.
- **[swift-css-types](https://github.com/coenttb/swift-css-types)**: A Swift package with foundational types for CSS.

## Requirements

- Swift 6.0+
- macOS 14.0+ / iOS 17.0+

## License

This project is licensed under the Apache 2.0 License. See [LICENSE](LICENSE) for details.

## Contributing

Contributions are welcome! Please feel free to submit a pull request or open an issue.
