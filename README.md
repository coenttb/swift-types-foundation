# swift-types-foundation: Type-Safe Foundation for Swift

`swift-types-foundation` is a Swift library that bundles essential type-safe packages for domain modeling and data handling. It provides a single dependency for libraries that need to declare strongly-typed models, such as `swift-html-types` and similar type-focused packages.

## Included Libraries

This foundation consolidates type-safe packages that are commonly used for domain modeling:

### **Core Type-Safe Models**

- **[EmailAddress](https://github.com/coenttb/swift-emailaddress-type)** - Domain-accurate and type-safe email address handling that adheres to web standards
- **[Domain](https://github.com/coenttb/swift-domain-type)** - Type-safe domain model consistent with web standards for reliable domain handling

### **Date & Time Types**

- **[DateParsing](https://github.com/coenttb/swift-date-parsing)** - Comprehensive date parsing for RFC 2822, RFC 5322, and Unix epoch timestamps with robust error handling
- **[UnixEpochParsing](https://github.com/coenttb/swift-date-parsing)** - Unix epoch timestamp parsing utilities
- **[FoundationExtensions](https://github.com/coenttb/swift-foundation-extensions)** - Powerful extensions for date manipulation, validation, and formatting with intuitive operations like `date + 1.day`

### **URL & Form Types**

- **[URLRouting](https://github.com/pointfreeco/swift-url-routing)** - Point-Free's powerful URL routing library for type-safe navigation
- **[URLRoutingTranslating](https://github.com/coenttb/swift-url-routing-translating)** - Internationalization support for routing with multi-language URL patterns
- **[URLFormCoding](https://github.com/coenttb/swift-url-form-coding)** - Type-safe URL form encoding and decoding

### **Language & Localization Types**

- **[Translating](https://github.com/coenttb/swift-translating)** - Comprehensive translation and localization framework

### **Utilities & Infrastructure**

- **[Builders](https://github.com/coenttb/swift-builders)** - Result builders for creating collections and content with declarative, SwiftUI-like syntax
- **[Dependencies](https://github.com/pointfreeco/swift-dependencies)** - SwiftUI Environment-inspired dependency management for controllable and testable applications
- **[CasePaths](https://github.com/pointfreeco/swift-case-paths)** - Key path-like functionality for enum cases
- **[IssueReporting](https://github.com/pointfreeco/xctest-dynamic-overlay)** - Runtime issue reporting and debugging utilities

## Usage

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

## Related Projects

### Type-Focused Libraries Using This Foundation

- **[swift-mailgun-types](https://github.com/coenttb/swift-mailgun-types)**: A complete Swift domain model of Mailgun types, Client, and Router
- **[swift-html-types](https://github.com/coenttb/swift-html-types)**: A complete Swift domain model of HTML elements and attributes
- **[swift-css-types](https://github.com/coenttb/swift-css-types)**: A complete Swift domain model of CSS properties and types

### Other Foundation Libraries

- **[swift-server-foundation](https://github.com/coenttb/swift-server-foundation)**: Server development foundation for building robust, scalable server applications
- **[swift-web-foundation](https://www.github.com/coenttb/swift-web-foundation)**: Web development foundation library with HTML, CSS, and form handling

## Feedback is Much Appreciated!
  
If you're working on your own Swift type-safe project, feel free to learn, fork, and contribute.

Got thoughts? Found something you love? Something you hate? Let me know! Your feedback helps make this project better for everyone. Open an issue or start a discussion—I'm all ears.

> [Subscribe to my newsletter](http://coenttb.com/en/newsletter/subscribe)
>
> [Follow me on X](http://x.com/coenttb)
> 
> [Link on Linkedin](https://www.linkedin.com/in/tenthijeboonkkamp)

## License

This project is licensed under the **Apache 2.0 License**. See the [LICENSE](LICENSE).
