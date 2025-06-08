//
//  Button+Standard.swift
//  SwiftUIKit
//
//  Created by Daniel Saidi on 2025-06-08.
//  Copyright © 2024-2025 Daniel Saidi. All rights reserved.
//

import SwiftUI

public extension Button {
    
    /// Create a button for a certain ``StandardButtonType``.
    init(
        _ type: StandardButtonType,
        action: @escaping () -> Void
    ) where Label == SwiftUI.Label<Text, Image?> {
        self.init(role: type.role, action: action) {
            Label(type)
        }
    }
}

struct PreviewContainer<Content: View>: View {

    let content: () -> Content

    var body: some View {
        NavigationView {
            #if os(macOS) || os(xrOS)
            EmptyView()
            #endif
            content()
        }
        #if os(iOS)
        .navigationViewStyle(.stack)
        #endif
    }
}

#Preview {

    PreviewContainer {
        List {
            Section {
                ForEach(StandardButtonType.allCases) { type in
                    Button(type) { print(type.title) }
                }
            }
            .labelStyle(.titleAndIcon)
        }
        .navigationTitle("Buttons")
    }
}
