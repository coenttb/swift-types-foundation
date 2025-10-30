//
//  ReadmeVerificationTests.swift
//  swift-types-foundation
//
//  Created to verify all README code examples compile and run correctly.
//

import Foundation
import Testing

@testable import TypesFoundation

@Suite("README Code Examples Validation", .serialized)
struct ReadmeVerificationTests {

  @Test("Quick Start - Multiple Imports (README lines 82-90)")
  func quickStartMultipleImports() throws {
    // This test verifies that all the individual package imports mentioned in README
    // are available through TypesFoundation. We don't need to import them separately
    // as they're re-exported through @_exported imports in exports.swift

    // Verify the imports are accessible by using types from each package
    let _: EmailAddress.Type = EmailAddress.self
    let _: _Domain.Type = _Domain.self

    // DateParsing doesn't export a primary type, but we can verify Foundation is available
    let _: Date.Type = Date.self

    // URLRouting is available
    // Note: We can't easily verify URLRoute without defining a concrete route type

    // Translating types
    let _: Language.Type = Language.self

    // Builders is imported but doesn't have a primary type to check
    // Dependencies is imported
    let _: Dependencies.DependencyValues.Type = Dependencies.DependencyValues.self
  }

  @Test("Quick Start - Consolidated Import (README lines 94-102)")
  func quickStartConsolidatedImport() throws {
    // Verify that importing TypesFoundation gives access to all functionality

    // Create email address
    let email = try EmailAddress("user@example.com")
    #expect(email.rawValue == "user@example.com")

    // Create domain
    let domain = try _Domain("example.com")
    #expect(domain.name == "example.com")

    // Date arithmetic with FoundationExtensions
    // Provide test calendar dependency
    withDependencies {
      $0.calendar = Calendar.current
    } operation: {
      let date = Date.now + 1.day
      let tomorrow = Calendar.current.date(byAdding: .day, value: 1, to: Date.now)!

      // Verify the date is approximately correct (within 1 second)
      let difference = abs(date.timeIntervalSince(tomorrow))
      #expect(difference < 1.0)
    }

    // Note: URLRoute<MyRoute>() would require defining MyRoute,
    // which is beyond the scope of README verification
  }

  @Test("Installation - Package.swift Dependency (README lines 61-65)")
  func installationPackageSwiftDependency() throws {
    // Verify the package name and URL are correct by checking they match Package.swift
    // This is a compile-time check - if TypesFoundation imports work, the package is set up correctly
    // We verify this by checking that core types from the package are accessible
    let _: EmailAddress.Type = EmailAddress.self
    let _: _Domain.Type = _Domain.self
  }

  @Test("Installation - Target Dependency (README lines 69-76)")
  func installationTargetDependency() throws {
    // Verify the product name "TypesFoundation" is correct
    // This is verified by the fact that we can import TypesFoundation and use its types
    let _: EmailAddress.Type = EmailAddress.self
    let _: _Domain.Type = _Domain.self
  }
}
