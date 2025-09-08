//
//  CoenttbWeb.swift
//  coenttb-web
//
//  Created by Coen ten Thije Boonkkamp on 21/12/2024.
//

@_exported import Builders
@_exported import CasePaths
@_exported import DateParsing
@_exported import Dependencies
@_exported import Domain
@_exported import EmailAddress
@_exported import Foundation
@_exported import FoundationExtensions
@_exported import IssueReporting
@_exported import Translating
@_exported import URLRouting
@_exported import URLRoutingTranslating
@_exported import URLFormCoding
@_exported import Tagged

extension Tagged where RawValue == Int {
    public static func parser() -> some ParserPrinter<Substring.UTF8View, Self> {
        Digits().map(.convert(
            apply: { Self.init(rawValue: $0) },
            unapply: { $0.rawValue }
        ))
    }
}

extension Tagged where RawValue == UUID {
    public static func parser() -> some ParserPrinter<Substring.UTF8View, Self> {
        UUID.parser().map(.convert(
            apply: { Self.init(rawValue: $0) },
            unapply: { $0.rawValue }
        ))
    }
}
