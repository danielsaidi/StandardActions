//
//  Label+Standard.swift
//  SwiftUIKit
//
//  Created by Daniel Saidi on 2025-06-08.
//  Copyright © 2024-2025 Daniel Saidi. All rights reserved.
//

import SwiftUI

public extension Label {

    /// Create a label for a certain ``StandardButtonType``.
    init(
        _ type: StandardButtonType
    ) where Label == SwiftUI.Label<Text, Image?> {
        self.init(
            title: { Text(type.title, bundle: .module) },
            icon: { type.image }
        )
    }
}

#Preview {

    PreviewContainer {
        List {
            Section {
                ForEach(StandardButtonType.allCases) {
                    Label($0)
                }
            }
            .labelStyle(.titleAndIcon)
        }
        .navigationTitle("Labels")
    }
}
