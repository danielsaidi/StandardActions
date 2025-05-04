//
//  StandardButtonType.swift
//  SwiftUIKit
//
//  Created by Daniel Saidi on 2024-04-30.
//  Copyright © 2024-2025 Daniel Saidi. All rights reserved.
//

import SwiftUI

public extension Button {
    
    /// Create a ``StandardButtonType``-based button.
    init(
        _ type: StandardButtonType,
        action: @escaping () -> Void
    ) where Label == SwiftUI.Label<Text, Image?> {
        self.init(
            role: type.role,
            action: action
        ) {
            Label(
                title: { Text(type.title, bundle: .module) },
                icon: { type.image }
            )
        }
    }
}

/// This enum defines standard button types that also define
/// standard localized texts and icons.
public enum StandardButtonType: String, CaseIterable, Identifiable, Sendable {
    case add, addToFavorites,
         cancel, call, close, copy,
         delete, deselect, done,
         edit, email, export,
         like,
         ok,
         paste,
         removeFromFavorites, removeLike,
         save, search, select, share
}

public extension StandardButtonType {

    /// A button to toggle a favorite state.
    static func toggleFavorite(isFavorite: Bool) -> StandardButtonType {
        isFavorite ? .removeFromFavorites : .addToFavorites
    }

    /// A button to toggle a liked state.
    static func toggleLike(isLiked: Bool) -> StandardButtonType {
        isLiked ? .removeLike : .like
    }

    /// A button to toggle a selected state.
    static func toggleSelect(isSelected: Bool) -> StandardButtonType {
        isSelected ? .deselect : .select
    }
}

public extension StandardButtonType {

    /// The button type's unique ID.
    var id: String { rawValue }

    /// The image to use for the button type.
    var image: Image? { .init(systemName: imageName) }

    /// The image name to use for the button type.
    var imageName: String {
        switch self {
        case .add: "plus"
        case .addToFavorites: "star"
        case .cancel: "xmark"
        case .close: "xmark.circle"
        case .call: "phone"
        case .copy: "doc.on.doc"
        case .delete: "trash"
        case .deselect: "checkmark.circle.fill"
        case .done: "checkmark"
        case .edit: "pencil"
        case .email: "envelope"
        case .export: "square.and.arrow.up"
        case .like: "heart"
        case .ok: "checkmark"
        case .paste: "clipboard"
        case .removeFromFavorites: "star.fill"
        case .removeLike: "heart.fill"
        case .save: "checkmark"
        case .search: "magnifyingglass"
        case .select: "checkmark.circle"
        case .share: "square.and.arrow.up"
        }
    }
    
    #if os(iOS) || os(macOS) || os(visionOS)
    /// A keyboard shortcut for the the button type, if any.
    var keyboardShortcut: (key: KeyEquivalent, modifiers: EventModifiers?)? {
        switch self {
        case .add: ("a", .command)
        case .cancel: (.escape, nil)
        case .close: (.escape, nil)
        case .done: (.return, .command)
        case .edit: ("e", .command)
        case .save: ("s", .command)
        case .search: ("f", .command)
        default: nil
        }
    }
    #endif

    /// The button role to use for the button type.
    var role: ButtonRole? {
        switch self {
        case .cancel: .cancel
        case .delete: .destructive
        default: nil
        }
    }

    /// The title to use for the button type.
    var title: LocalizedStringKey {
        switch self {
        case .add: "Button.Add"
        case .addToFavorites: "Button.AddToFavorites"
        case .call: "Button.Call"
        case .cancel: "Button.Cancel"
        case .close: "Button.Close"
        case .copy: "Button.Copy"
        case .deselect: "Button.Deselect"
        case .edit: "Button.Edit"
        case .email: "Button.Email"
        case .export: "Button.Export"
        case .delete: "Button.Delete"
        case .done: "Button.Done"
        case .like: "Button.Like"
        case .ok: "Button.OK"
        case .paste: "Button.Paste"
        case .removeFromFavorites: "Button.RemoveFromFavorites"
        case .removeLike: "Button.RemoveLike"
        case .save: "Button.Save"
        case .search: "Button.Search"
        case .select: "Button.Select"
        case .share: "Button.Share"
        }
    }
}

public extension View {
    
    @ViewBuilder
    /// Apply a keyboard shortcut for a certain button type.
    func keyboardShortcut(
        _ button: StandardButtonType
    ) -> some View {
        #if os(iOS) || os(macOS) || os(visionOS)
        if let shortcut = button.keyboardShortcut {
            if let modifiers = shortcut.modifiers {
                self.keyboardShortcut(shortcut.key, modifiers: modifiers)
            } else {
                self.keyboardShortcut(shortcut.key)
            }
        } else {
            self
        }
        #else
        self
        #endif
    }
}


#Preview {
    
    @ViewBuilder
    func buttons() -> some View {
        Section {
            ForEach(StandardButtonType.allCases) { type in
                Button(type) { print("Tapped \(type.title)") }
            }
        }
        Section {
            Button(.toggleFavorite(isFavorite: false)) {}
            Button(.toggleFavorite(isFavorite: true)) {}
            Button(.toggleLike(isLiked: false)) {}
            Button(.toggleLike(isLiked: true)) {}
            Button(.toggleSelect(isSelected: false)) {}
            Button(.toggleSelect(isSelected: true)) {}
        }
    }
    
    return List {
        buttons().labelStyle(.titleAndIcon)
        buttons().labelStyle(.titleOnly)
        buttons().labelStyle(.iconOnly)
    }
    .toolbar {
        ToolbarItemGroup {
            buttons()
        }
    }
}
