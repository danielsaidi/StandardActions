//
//  StandardToggleType.swift
//  StandardActions
//
//  Created by Daniel Saidi on 2025-06-25.
//  Copyright © 2025 Daniel Saidi. All rights reserved.
//

import SwiftUI

/// This enum defines standard toggle types.
///
/// Each type can be resolved to a ``actionType`` based on a binding or state.
///
/// A ``SwiftUI/Toggle`` can be created with a ``StandardToggleType``.
/// This will automatically apply the related action type's localized title, icon, traits,
/// etc. to the generated view.
public enum StandardToggleType {

    /// Toggle a bookmarked state.
    case isBookmarked

    /// Toggle a connected state.
    case isConnected

    /// Toggle a downloaded state.
    case isDownloaded

    /// Toggle an expanded state.
    case isExpanded(ExpandDirection)

    /// Toggle a favorite state.
    case isFavorite

    /// Toggle an installed state.
    case isInstalled

    /// Toggle a learned state.
    case isLearned

    /// Toggle a liked state.
    case isLiked

    /// Toggle a locked state.
    case isLocked

    /// Toggle a logged in state.
    case isLoggedIn

    /// Toggle a pinned state.
    case isPinned

    /// Toggle a playing state with pause as counter state.
    case isPlayingWithPause

    /// Toggle a playing state with stop as counter state.
    case isPlayingWithStop

    /// Toggle a muted state.
    case isMuted

    /// Toggle a selected state.
    case isSelected

    /// Toggle a subscribed state.
    case isSubscribed

    /// Toggle a visible state.
    case isVisible

    /// This type is used to handle many expand directions.
    public enum ExpandDirection {
        case up, down

        func actionType(
            for isOn: Bool
        ) -> StandardActionType {
            switch self {
            case .down: isOn ? .collapseUp : .expandDown
            case .up: isOn ? .collapseDown : .expandUp
            }
        }
    }
}

public extension StandardToggleType {

    /// Resolve an action type for the toggle type and state.
    func actionType(
        for binding: Binding<Bool>
    ) -> StandardActionType {
        actionType(for: binding.wrappedValue)
    }

    /// Resolve an action type for the toggle type and state.
    func actionType(
        for isOn: Bool
    ) -> StandardActionType {
        isOn ? actionTypeOn : actionTypeOff
    }
}

private extension StandardToggleType {

    var actionTypeOff: StandardActionType {
        switch self {
        case .isBookmarked: .bookmark
        case .isConnected: .connect
        case .isDownloaded: .download
        case .isExpanded(let direction): direction.actionType(for: false)
        case .isFavorite: .favorite
        case .isInstalled: .install
        case .isLearned: .learn
        case .isLiked: .like
        case .isLoggedIn: .logout
        case .isLocked: .like
        case .isMuted: .mute
        case .isPinned: .pin
        case .isPlayingWithPause: .play
        case .isPlayingWithStop: .play
        case .isSelected: .select
        case .isSubscribed: .subscribe
        case .isVisible: .show
        }
    }

    var actionTypeOn: StandardActionType {
        switch self {
        case .isBookmarked: .removeBookmark
        case .isConnected: .disconnect
        case .isDownloaded: .removeDownload
        case .isExpanded(let direction): direction.actionType(for: false)
        case .isFavorite: .removeFavorite
        case .isInstalled: .uninstall
        case .isLearned: .unlearn
        case .isLiked: .removeLike
        case .isLoggedIn: .logout
        case .isLocked: .unlock
        case .isMuted: .unmute
        case .isPinned: .unpin
        case .isPlayingWithPause: .pause
        case .isPlayingWithStop: .stop
        case .isSelected: .deselect
        case .isSubscribed: .unsubscribe
        case .isVisible: .hide
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
            Label(type.actionType(for: isOn))
        }
    }
}

#Preview {

    struct Preview: View {

        static let prefix = "com.danielsaidi.StandardButtons."

        @AppStorage("\(Self.prefix).isBookmarked") var isBookmarked = false
        @AppStorage("\(Self.prefix).isConnected") var isConnected = false
        @AppStorage("\(Self.prefix).isDownloaded") var isDownloaded = false
        @AppStorage("\(Self.prefix).isExpandedDown") var isExpandedDown = false
        @AppStorage("\(Self.prefix).isExpandedUp") var isExpandedUp = false
        @AppStorage("\(Self.prefix).isFavorite") var isFavorite = false
        @AppStorage("\(Self.prefix).isInstalled") var isInstalled = false
        @AppStorage("\(Self.prefix).isLearned") var isLearned = false
        @AppStorage("\(Self.prefix).isLiked") var isLiked = false
        @AppStorage("\(Self.prefix).isLocked") var isLocked = false
        @AppStorage("\(Self.prefix).isPinned") var isPinned = false
        @AppStorage("\(Self.prefix).isPlayingWithPause") var isPlayingWithPause = false
        @AppStorage("\(Self.prefix).isPlayingWithStop") var isPlayingWithStop = false
        @AppStorage("\(Self.prefix).isSelected") var isSelected = false
        @AppStorage("\(Self.prefix).isSubscribed") var isSubscribed = false
        @AppStorage("\(Self.prefix).isVisible") var isVisible = false

        @ViewBuilder
        @MainActor
        func buttons() -> some View {
            Toggle(.isBookmarked, isOn: $isBookmarked)
            Toggle(.isConnected, isOn: $isConnected)
            Toggle(.isDownloaded, isOn: $isDownloaded)
            Toggle(.isExpanded(.down), isOn: $isExpandedDown)
            Toggle(.isExpanded(.up), isOn: $isExpandedUp)
            Toggle(.isFavorite, isOn: $isFavorite)
            Toggle(.isInstalled, isOn: $isInstalled)
            Toggle(.isLearned, isOn: $isLearned)
            Toggle(.isLiked, isOn: $isLiked)
            Toggle(.isLocked, isOn: $isLocked)
            Toggle(.isPinned, isOn: $isPinned)
            Toggle(.isPlayingWithPause, isOn: $isPlayingWithPause)
            Toggle(.isPlayingWithStop, isOn: $isPlayingWithStop)
            Toggle(.isSelected, isOn: $isSelected)
            Toggle(.isSubscribed, isOn: $isSubscribed)
            Toggle(.isVisible, isOn: $isVisible)
        }

        var body: some View {
            NavigationView {
                List {
                    buttons().labelStyle(.titleAndIcon)
                }
                .navigationTitle("Toggle Types")
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
