//
//  StandardAction.swift
//  StandardActions
//
//  Created by Daniel Saidi on 2024-04-30.
//  Copyright © 2025 Daniel Saidi. All rights reserved.
//

import SwiftUI

/// This enum defines common actions, with an implementation
/// for each action.
///
/// You can use a ``StandardActionControl`` to render action
/// views or ``StandardActionListItem`` to render list items.
///
/// Each action will render a specific control. For instance,
/// ``call(phoneNumber:)`` renders a `Link` while ``copy(_:)``
/// renders a regular `Button`.
public enum StandardAction {

    /// Call a phone number.
    case call(phoneNumber: String)

    /// Copy an image to the pasteboard.
    case copyImageToPasteboard(ImageRepresentable)

    /// Copy a string to the pasteboard.
    case copyStringToPasteboard(String)

    /// Send an e-mail.
    case email(address: String)

    /// Open a certain URL.
    case openUrl(_ url: String)
}

public extension StandardAction {

    @available(*, deprecated, renamed: "copyToPasteboard")
    func copy(_ str: String) -> StandardAction { .copyStringToPasteboard(str) }

    @available(*, deprecated, renamed: "copyImageToPasteboard")
    func copyImage(_ img: ImageRepresentable) -> StandardAction { .copyImageToPasteboard(img) }
}


/// This view can be used to render any ``StandardAction``.
///
/// The ``StandardAction`` already implements `View` so this
/// view is just provided for extra discoverability.
public struct StandardActionControl: View {

    /// Create a standard action control.
    ///
    /// The additional action will only be triggered for the
    /// actions that render a button.
    ///
    /// - Parameters:
    ///   - action: The action to trigger.
    ///   - title: An optional, custom title.
    ///   - bundle: An optional, custom title bundle.
    ///   - additionalAction: An optional, additional action.
    public init(
        _ action: StandardAction,
        title: LocalizedStringKey? = nil,
        bundle: Bundle? = nil,
        additionalAction: @escaping () -> Void = {}
    ) {
        self.action = action
        self.title = title
        self.bundle = bundle
        self.additionalAction = additionalAction
    }

    private let action: StandardAction
    private let title: LocalizedStringKey?
    private let bundle: Bundle?
    private let additionalAction: () -> Void

    public var body: some View {
        switch action {
        case .call(let number):
            link(.call, url: .call(number: number))
        case .copyImageToPasteboard(let image):
            button(.copy) { copyImage(image) }
        case .copyStringToPasteboard(let string):
            button(.copy) { copyString(string) }
        case .email(let address):
            link(.email, url: .email(address: address))
        case .openUrl(let url):
            link(.openInSafari, url: URL(string: url))
        }
    }

    private func button(
        _ actionType: StandardActionType,
        action: @escaping () -> Void
    ) -> some View {
        Button(actionType, title: title, bundle: bundle) {
            action()
            additionalAction()
        }
    }

    @ViewBuilder
    private func link(
        _ actionType: StandardActionType,
        url: URL?
    ) -> some View {
        if let url {
            Link(actionType, title: title, bundle: bundle, destination: url)
        }
    }
}

/// This view renders a ``StandardAction`` for use in a list,
/// with the standard action as a trailing button.
public struct StandardActionListItem: View {

    /// Create a standard action list item.
    ///
    /// The additional action will only be triggered for the
    /// actions that render a button.
    ///
    /// - Parameters:
    ///   - action: The action to trigger.
    ///   - title: An optional list item title.
    ///   - text: A list item text.
    ///   - bundle: An optional, custom title bundle.
    ///   - additionalAction: An optional, additional action.
    public init(
        action: StandardAction?,
        title: LocalizedStringKey? = nil,
        text: LocalizedStringKey,
        bundle: Bundle = .main,
        additionalAction: @escaping () -> Void = {}
    ) {
        self.title = title
        self.text = text
        self.bundle = bundle
        self.action = action
        self.additionalAction = additionalAction
    }

    private let action: StandardAction?
    private let title: LocalizedStringKey?
    private let text: LocalizedStringKey
    private let bundle: Bundle
    private let additionalAction: () -> Void

    public var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 5) {
                if let title {
                    Text(title, bundle: bundle)
                        .lineLimit(1)
                        .font(.footnote)
                        .foregroundColor(.secondary)
                }
                Text(text, bundle: bundle)
            }
            Spacer()
            if let action {
                StandardActionControl(
                    action,
                    additionalAction: additionalAction
                )
                .labelStyle(.iconOnly)
            }
        }
    }
}

public extension StandardAction {

    #if canImport(UIKit) || targetEnvironment(macCatalyst)
    typealias ImageRepresentable = UIImage
    #else
    typealias ImageRepresentable = NSImage
    #endif
}

@MainActor
private extension StandardActionControl {

    #if os(iOS) || os(visionOS) || targetEnvironment(macCatalyst)
    typealias Pasteboard = UIPasteboard
    #elseif os(macOS)
    typealias Pasteboard = NSPasteboard
    #endif

    func copyImage(_ image: StandardAction.ImageRepresentable) {
        #if os(macOS)
        Pasteboard.general.writeObjects([image])
        #elseif os(iOS) || os(visionOS) || targetEnvironment(macCatalyst)
        Pasteboard.general.image = image
        #endif
    }

    func copyString(_ string: String) {
        #if os(macOS)
        Pasteboard.general.setString(string, forType: .string)
        #elseif os(iOS) || os(visionOS) || targetEnvironment(macCatalyst)
        Pasteboard.general.string = string
        #endif
    }
}

#Preview {
    NavigationView {
        List {
            Section("Actions") {
                StandardActionControl(.call(phoneNumber: "+46730787048"))
                StandardActionControl(.copyImageToPasteboard(.init()))
                StandardActionControl(.copyStringToPasteboard("foo"))
                StandardActionControl(.email(address: "daniel@kankoda.com"))
                StandardActionControl(.openUrl("https://danielsaidi.com"))
            }
            Section("List Item") {
                StandardActionListItem(
                    action: .copyStringToPasteboard(""),
                    title: "Title",
                    text: "Text"
                )
            }
        }
        .navigationTitle("Standard Actions")
    }
}
