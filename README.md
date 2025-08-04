# swift-server-foundation: Server Development Foundation for Swift

`swift-server-foundation` is a comprehensive server-side Swift library that consolidates essential packages for building robust, scalable server applications. Rather than managing multiple dependencies, this foundation provides unified access to authentication, database connectivity, rate limiting, logging, routing, and server infrastructure tools.

## Included Libraries

This foundation re-exports the following specialized packages, organized by domain:

### **Type Safety & Domain Modeling**

- **[EmailAddress](https://github.com/coenttb/swift-emailaddress-type)** - Domain-accurate and type-safe email address handling that adheres to web standards
- **[Domain](https://github.com/coenttb/swift-domain-type)** - Type-safe domain model consistent with web standards for reliable domain handling
- **[JWT](https://github.com/coenttb/swift-jwt)** - Standards-compliant JSON Web Token creation, signing, and verification using Apple's Crypto framework
- **[PasswordValidation](https://github.com/coenttb/swift-password-validation)** - Robust password validation with customizable security policies

### **Authentication & Security**

- **[Crypto](https://github.com/apple/swift-crypto)** - Apple's Swift Crypto framework for cryptographic operations, hashing, and secure key management
- **[RateLimiter](https://github.com/coenttb/swift-ratelimiter)** - Flexible rate limiting implementation to protect APIs from abuse and ensure fair usage

### **Database & Persistence**

- **[PostgresKit](https://github.com/vapor/postgres-kit)** - PostgreSQL database driver with async/await support for reliable data persistence
- **Database Configuration** - Built-in utilities for managing database connections and configurations

### **Server Infrastructure**

- **[AsyncHTTPClient](https://github.com/swift-server/async-http-client)** - Non-blocking HTTP client built on SwiftNIO for making external API calls
- **[Logging](https://github.com/apple/swift-log)** - Apple's unified logging API for structured, configurable application logging
- **Event Loop Management** - Connection pooling and event loop group utilities for optimal performance

### **Environment & Configuration**

- **[EnvironmentVariables](https://github.com/coenttb/swift-environment-variables)** - Type-safe environment variable handling with validation and defaults
- **Environment Variables Test Support** - Testing utilities for environment-dependent code

### **Date & Time Handling**

- **[DateParsing](https://github.com/coenttb/swift-date-parsing)** - Comprehensive date parsing for RFC 2822, RFC 5322, and Unix epoch timestamps with robust error handling
- **[FoundationExtensions](https://github.com/coenttb/swift-foundation-extensions)** - Powerful extensions for date manipulation, validation, and formatting with intuitive operations like `date + 1.day`

### **Routing & Translation**

- **[URLRouting](https://github.com/pointfreeco/swift-url-routing)** - Point-Free's powerful URL routing library for type-safe navigation
- **[URLRoutingTranslating](https://github.com/coenttb/swift-url-routing-translating)** - Internationalization support for routing with multi-language URL patterns
- **[Translating](https://github.com/coenttb/swift-translating)** - Comprehensive translation and localization framework

### **Utilities & Infrastructure**

- **[Builders](https://github.com/coenttb/swift-builders)** - Result builders for creating collections and content with declarative, SwiftUI-like syntax
- **[Dependencies](https://github.com/pointfreeco/swift-dependencies)** - SwiftUI Environment-inspired dependency management for controllable and testable applications
- **[CasePaths](https://github.com/pointfreeco/swift-case-paths)** - Key path-like functionality for enum cases
- **[IssueReporting](https://github.com/pointfreeco/xctest-dynamic-overlay)** - Runtime issue reporting and debugging utilities

## Usage

Instead of importing multiple individual packages:

```swift
import AsyncHTTPClient
import PostgresKit
import JWT
import RateLimiter
import Logging
import EnvironmentVariables
// ... and many more
```

Simply import the foundation:

```swift
import ServerFoundation

// All server functionality is now available:
let logger = Logger(label: "com.example.app")
let jwt = try JWT.signed(/* ... */)
let client = HTTPClient(eventLoopGroupProvider: .shared)
let rateLimiter = RateLimiter(rate: 100, per: .minute)
let dbConfig = try DatabaseConfiguration.live
```

## Installation

To use **swift-server-foundation** in your project, add it to your `Package.swift` dependencies:

```swift
dependencies: [
    .package(url: "https://github.com/coenttb/swift-server-foundation.git", exact: "0.0.1")
]
```

## Environment Variables Support

The package includes `ServerFoundationEnvVars` for environment-specific configuration:

```swift
import ServerFoundationEnvVars

// Access environment variables with type safety
let port = EnvVars.PORT.value ?? 8080
let databaseUrl = EnvVars.DATABASE_URL.require()
```

## Related projects

### Boiler & coenttb

* [boiler](https://www.github.com/coenttb/boiler): A minimal Swift web framework for building type-safe servers
* [swift-web-foundation](https://www.github.com/coenttb/swift-web-foundation): Web development foundation library with HTML, CSS, and form handling
* [coenttb-com-server](https://www.github.com/coenttb/coenttb-com-server): The backend server for coenttb.com, written entirely in Swift and powered by this foundation

## Feedback is Much Appreciated!
  
If you're working on your own Swift server project, feel free to learn, fork, and contribute.

Got thoughts? Found something you love? Something you hate? Let me know! Your feedback helps make this project better for everyone. Open an issue or start a discussion—I'm all ears.

> [Subscribe to my newsletter](http://coenttb.com/en/newsletter/subscribe)
>
> [Follow me on X](http://x.com/coenttb)
> 
> [Link on Linkedin](https://www.linkedin.com/in/tenthijeboonkkamp)

## License

This project is licensed under the **Apache 2.0 License**. See the [LICENSE](LICENSE).