//
//  StandardAction.swift
//  StandardButtons
//
//  Created by Daniel Saidi on 2024-04-30.
//  Copyright © 2025 Daniel Saidi. All rights reserved.
//

import SwiftUI

/// This enum defines common button actions, with a standard
/// implementation for each action.
///
/// This type implements `View` which means that you can use
/// it directly as renderable content. It will render a view
/// that fits the action. For instance, ``call(phoneNumber:)``
/// renders a `Link`, ``copy(_:)`` a `Button`, etc.
public enum StandardAction {

    /// Call a phone number.
    case call(phoneNumber: String)

    /// Copy a text.
    case copy(String)

    /// Copy an image.
    case copyImage(ImageRepresentable)

    /// Send an e-mail.
    case email(address: String)

    /// Open a certain URL.
    case openUrl(_ url: String)
}

extension StandardAction: View {

    public var body: some View {
        switch self {
        case .call(let number):
            if let url = URL.call(number: number) {
                Link(.call, destination: url)
            }
        case .copy(let string):
            Button(.copy) {
                copyString(string)
            }
        case .copyImage(let image):
            Button(.copy) {
                copyImage(image)
            }
        case .email(let address):
            if let url = URL.email(address: address) {
                Link(.email, destination: url)
            }
        case .openUrl(let url):
            if let url = URL(string: url) {
                Link(.openInSafari, destination: url)
            }
        }
    }
}

/// This view renders a ``StandardAction`` for use in a list,
/// with the standard action as a trailing button.
public struct StandardActionListItem: View {

    public init(
        title: LocalizedStringKey?,
        text: LocalizedStringKey,
        bundle: Bundle = .main,
        action: StandardAction?
    ) {
        self.title = title
        self.text = text
        self.bundle = bundle
        self.action = action
    }

    private let title: LocalizedStringKey?
    private let text: LocalizedStringKey
    private let bundle: Bundle
    private let action: StandardAction?

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
                action
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

    #if os(iOS) || os(visionOS) || targetEnvironment(macCatalyst)
    typealias Pasteboard = UIPasteboard
    #elseif os(macOS)
    typealias Pasteboard = NSPasteboard
    #endif
}

@MainActor
private extension StandardAction {

    func copyImage(_ image: ImageRepresentable) {
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
                StandardAction.call(phoneNumber: "+46730787048")
                StandardAction.copy("foo")
                StandardAction.copy(.init())
                StandardAction.email(address: "daniel@kankoda.com")
                StandardAction.openUrl("https://danielsaidi.com")
            }
            Section("List Item") {
                StandardActionListItem(
                    title: "Title",
                    text: "Text",
                    action: .copy("")
                )
            }
        }
        .navigationTitle("Standard Actions")
    }
}
