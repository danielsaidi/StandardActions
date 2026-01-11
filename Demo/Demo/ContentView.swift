//
//  ContentView.swift
//  Demo
//
//  Created by Daniel Saidi on 2026-01-11.
//

import SwiftUI
import StandardActions

struct ContentView: View {
    var body: some View {
        List {
            StandardActionListItem(
                action: .email(address: "daniel.saidi@gmail.com"),
                title: "Email",
                text: "daniel.saidi@gmail.com"
            )
            StandardActionListItem(
                action: .call(phoneNumber: "0730-787048"),
                title: "Phone",
                text: "0730-787048"
            )
            StandardActionListItem(
                action: .copyStringToPasteboard("Copy this"),
                title: "Copy to Pasteboard",
                text: "Copy this"
            )
            StandardActionListItem(
                action: .openUrl("https://danielsaidi.com"),
                title: "URL",
                text: "https://danielsaidi.com"
            )
        }
    }
}

#Preview {
    ContentView()
}
