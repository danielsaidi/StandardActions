//
//  View+StandardButtonType.swift
//  StandardButtons
//
//  Created by Daniel Saidi on 2025-06-08.
//  Copyright © 2025 Daniel Saidi. All rights reserved.
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

public extension Link {

    /// Create a link for a certain ``StandardButtonType``.
    init(
        _ type: StandardButtonType,
        destination: URL
    ) where Label == SwiftUI.Label<Text, Image?> {
        self.init(destination: destination) {
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
