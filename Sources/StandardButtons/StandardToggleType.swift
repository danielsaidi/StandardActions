//
//  StandardToggleType.swift
//  StandardButtons
//
//  Created by Daniel Saidi on 2025-06-25.
//  Copyright © 2025 Daniel Saidi. All rights reserved.
//

import SwiftUI

/// This enum defines standard toggle types.
///
/// Each type can be resolved to a ``buttonType`` based on a
/// boolean binding or state.
///
/// ``SwiftUI/Toggle`` can be created with a standard toggle.
/// This will automatically apply the type's localized title,
/// icon, traits, etc. based on the current toggle state.
public enum StandardToggleType {

    /// Toggle a bookmarked state.
    case isBookmarked

    /// Toggle a downloaded state.
    case isDownloaded

    /// Toggle an expanded state.
    case isExpanded

    /// Toggle a favorite state.
    case isFavorite

    /// Toggle a liked state.
    case isLiked

    /// Toggle a selected state.
    case isSelected
}

public extension StandardToggleType {

    /// Resolve a standard button type for the toggle type.
    func buttonType(
        for binding: Binding<Bool>
    ) -> StandardButtonType {
        buttonType(for: binding.wrappedValue)
    }

    /// Resolve a standard button type for the toggle type.
    func buttonType(
        for isOn: Bool
    ) -> StandardButtonType {
        switch self {
        case .isBookmarked: isOn ? .removeBookmark : .bookmark
        case .isDownloaded: isOn ? .removeDownload : .download
        case .isExpanded: isOn ? .collapse : .expand
        case .isFavorite: isOn ? .removeFavorite : .favorite
        case .isLiked: isOn ? .removeLike : .like
        case .isSelected: isOn ? .deselect : .select
        }
    }
}

public extension Toggle {

    /// Create a toggle for a certain ``StandardToggleType``.
    init(
        _ type: StandardToggleType,
        isOn: Binding<Bool>
    ) where Label == SwiftUI.Label<Text, Image?> {
        self.init(isOn: isOn) {
            Label(type.buttonType(for: isOn))
        }
    }
}

#Preview {

    struct Preview: View {

        @State var isBookmarked = false
        @State var isDownloaded = false
        @State var isExpanded = false
        @State var isFavorite = false
        @State var isLiked = false
        @State var isSelected = false

        @ViewBuilder
        @MainActor
        func buttons() -> some View {
            Toggle(.isBookmarked, isOn: $isBookmarked)
            Toggle(.isDownloaded, isOn: $isDownloaded)
            Toggle(.isExpanded, isOn: $isExpanded)
            Toggle(.isFavorite, isOn: $isFavorite)
            Toggle(.isLiked, isOn: $isLiked)
            Toggle(.isSelected, isOn: $isSelected)
        }

        var body: some View {
            NavigationView {
                List {
                    buttons().labelStyle(.titleAndIcon)
                }
                .navigationTitle("Button Types")
                .toolbar {
                    ToolbarItemGroup {
                        buttons()
                    }
                }
            }
        }
    }

    return Preview()
}
