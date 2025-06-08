//
//  Link+Standard.swift
//  SwiftUIKit
//
//  Created by Daniel Saidi on 2025-06-08.
//  Copyright © 2024-2025 Daniel Saidi. All rights reserved.
//

import SwiftUI

public extension Link {

    /// Create a button for a certain ``StandardButtonType``.
    init(
        _ type: StandardButtonType,
        destination: URL
    ) where Label == SwiftUI.Label<Text, Image?> {
        self.init(destination: destination) {
            Label(type)
        }
    }
}

#Preview {

    NavigationView {
        List {
            if let url = URL(string: "https://danielsaidi.com") {
                Section {
                    ForEach(StandardButtonType.allCases) {
                        Link($0, destination: url)
                    }
                }
                .labelStyle(.titleAndIcon)
            }
        }
        .navigationTitle("Links")
        .navigationViewStyle(.stack)
    }
}
