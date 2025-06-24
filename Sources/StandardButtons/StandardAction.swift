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
/// You can use ``trigger()`` to trigger the standard action
/// for a certain action type.
public enum StandardAction: Sendable, View {

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

public extension StandardAction {

    #if canImport(UIKit) || targetEnvironment(macCatalyst)
    typealias ImageRepresentable = UIImage
    #else
    typealias ImageRepresentable = NSImage
    #endif

    #if canImport(UIKit) || targetEnvironment(macCatalyst)
    typealias Pasteboard = UIPasteboard
    #else
    typealias Pasteboard = NSPasteboard
    #endif
}

@MainActor
private extension StandardAction {

    var pasteboard: Pasteboard { .general }

    func copyImage(_ image: ImageRepresentable) {
        #if os(macOS)
        pasteboard.writeObjects([image])
        #elseif os(iOS)
        pasteboard.image = image
        #endif
    }

    func copyString(_ string: String) {
        #if os(macOS)
        pasteboard.setString(string, forType: .string)
        #elseif os(iOS)
        pasteboard.string = string
        #endif
    }
}

#Preview {
    if #available(iOS 16.0, *) {
        NavigationStack {
            List {
                StandardAction.call(phoneNumber: "+46730787048")
                StandardAction.copy("foo")
                StandardAction.copy(.init())
                StandardAction.email(address: "daniel@kankoda.com")
                StandardAction.openUrl("https://danielsaidi.com")
            }
            .navigationTitle("Standard Actions")
        }
    }
}
