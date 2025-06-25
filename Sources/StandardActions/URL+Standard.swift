//
//  URL+Standard.swift
//  StandardActions
//
//  Created by Daniel Saidi on 2025-06-24.
//  Copyright © 2025 Daniel Saidi. All rights reserved.
//

import SwiftUI

public extension URL {

    /// A URL that will open the phone to call a number.
    static func call(number: String) -> URL? {
        .init(string: "tel:\(number)")
    }

    /// A URL that will open an email composer to an address.
    static func email(address: String) -> URL? {
        .init(string: "mailto:\(address)")
    }
}
