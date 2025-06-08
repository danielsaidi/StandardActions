//
//  StandardButtonType.swift
//  SwiftUIKit
//
//  Created by Daniel Saidi on 2024-04-30.
//  Copyright © 2024-2025 Daniel Saidi. All rights reserved.
//

import SwiftUI

/// This enum defines standard button types.
///
/// Each button type defines a localized title, an image, as
/// well as a button role, and an optional keyboard shortcut.
public enum StandardButtonType: String, CaseIterable, Identifiable, Sendable {
    case add, apply, archive, attach,
         back, bookmark, browse,
         cancel, call, close, collapse, confirm, copy, connect, create, customize,
         delete, deselect, disconnect, dismiss, done, download, downloaded,
         edit, email, end, enter, execute, exit, expand, export,
         favorite, filter, forward,
         help, hide,
         `import`, info, install,
         like, load, lock, login, logout,
         menu, minimize, mute,
         new, next,
         ok, open,
         paste, pause, pin, play, post, preview, previous, print, proceed, purchase,
         rate, record, redo, refresh, reject, reload, remove, removeFavorite, removeLike, rename,
         reply, report, reset, resize, restart, restore, resume, retry, `return`,
         save, search, select, send, settings, share, show, shuffle, sign, skip, sort, start,
         stop, submit, subscribe, sync,
         tag, translate,
         undo, unlike, unlock, unmute, unsubscribe, update, upload,
         verify, view,
         zoom, zoomIn, zoomOut
}

public extension StandardButtonType {

    /// A button to toggle a downloaded state.
    static func toggleDownload(isDownloaded: Bool) -> StandardButtonType {
        isDownloaded ? .downloaded : .download
    }

    /// A button to toggle a favorite state.
    static func toggleFavorite(isFavorite: Bool) -> StandardButtonType {
        isFavorite ? .removeFavorite : .favorite
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
    var image: Image { .init(systemName: imageName) }

    /// The image name to use for the button type.
    var imageName: String {
        switch self {
        case .add: "plus"
        case .apply: "checkmark.circle"
        case .archive: "archivebox"
        case .attach: "paperclip"
        case .back: "chevron.backward"
        case .bookmark: "bookmark"
        case .browse: "folder"
        case .call: "phone"
        case .cancel: "xmark"
        case .close: "xmark.circle"
        case .collapse: "chevron.up"
        case .confirm: "checkmark.circle"
        case .connect: "link"
        case .copy: "doc.on.doc"
        case .create: "plus.circle"
        case .customize: "slider.horizontal.3"
        case .delete: "trash"
        case .deselect: "checkmark.circle.fill"
        case .disconnect: "link.badge.minus"
        case .dismiss: "xmark"
        case .done: "checkmark"
        case .download: "arrow.down.circle"
        case .downloaded: "arrow.down.circle.fill"
        case .edit: "pencil"
        case .email: "envelope"
        case .end: "stop.circle"
        case .enter: "return"
        case .execute: "play.circle"
        case .exit: "rectangle.portrait.and.arrow.right"
        case .expand: "chevron.down"
        case .export: "square.and.arrow.up"
        case .favorite: "star"
        case .filter: "line.3.horizontal.decrease.circle"
        case .forward: "chevron.forward"
        case .help: "questionmark.circle"
        case .hide: "eye.slash"
        case .import: "square.and.arrow.down"
        case .info: "info.circle"
        case .install: "arrow.down.app"
        case .like: "heart"
        case .load: "arrow.clockwise"
        case .lock: "lock"
        case .login: "person.crop.circle"
        case .logout: "rectangle.portrait.and.arrow.forward"
        case .menu: "list.bullet"
        case .minimize: "minus.circle"
        case .mute: "speaker.slash"
        case .new: "plus"
        case .next: "arrow.right"
        case .ok: "checkmark"
        case .open: "folder"
        case .paste: "clipboard"
        case .pause: "pause.circle"
        case .pin: "pin"
        case .play: "play.circle"
        case .post: "paperplane"
        case .preview: "eye"
        case .previous: "arrow.left"
        case .print: "printer"
        case .proceed: "arrow.right.circle"
        case .purchase: "cart"
        case .rate: "star"
        case .record: "record.circle"
        case .redo: "arrow.clockwise"
        case .refresh: "arrow.clockwise"
        case .reject: "xmark.circle"
        case .reload: "arrow.clockwise.circle"
        case .remove: "trash"
        case .removeFavorite: "star.fill"
        case .removeLike: "heart.fill"
        case .rename: "pencil"
        case .reply: "arrowshape.turn.up.left"
        case .report: "flag"
        case .reset: "arrow.counterclockwise"
        case .resize: "arrow.up.left.and.arrow.down.right"
        case .restart: "arrow.counterclockwise.circle"
        case .restore: "arrow.uturn.backward"
        case .resume: "play.circle"
        case .retry: "arrow.clockwise"
        case .return: "arrowshape.turn.up.left"
        case .save: "checkmark"
        case .search: "magnifyingglass"
        case .select: "checkmark.circle"
        case .send: "paperplane"
        case .settings: "gearshape"
        case .share: "square.and.arrow.up"
        case .show: "eye"
        case .shuffle: "shuffle"
        case .sign: "signature"
        case .skip: "forward"
        case .sort: "arrow.up.arrow.down"
        case .start: "play"
        case .stop: "stop.circle"
        case .submit: "paperplane"
        case .subscribe: "bell"
        case .sync: "arrow.triangle.2.circlepath"
        case .tag: "tag"
        case .translate: "character.bubble"
        case .undo: "arrow.uturn.backward"
        case .unlike: "hand.thumbsdown"
        case .unlock: "lock.open"
        case .unmute: "speaker.wave.2"
        case .unsubscribe: "bell.slash"
        case .update: "arrow.triangle.2.circlepath"
        case .upload: "arrow.up.circle"
        case .verify: "checkmark.shield"
        case .view: "eye"
        case .zoom: "magnifyingglass"
        case .zoomIn: "plus.magnifyingglass"
        case .zoomOut: "minus.magnifyingglass"
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
        case .back: .cancel
        case .cancel: .cancel
        case .delete: .destructive
        case .exit: .cancel
        default: nil
        }
    }

    /// The title to use for the button type.
    var title: LocalizedStringKey {
        switch self {
        case .add: "Button.Add"
        case .apply: "Button.Apply"
        case .archive: "Button.Archive"
        case .attach: "Button.Attach"
        case .back: "Button.Back"
        case .bookmark: "Button.Bookmark"
        case .browse: "Button.Browse"
        case .call: "Button.Call"
        case .cancel: "Button.Cancel"
        case .close: "Button.Close"
        case .collapse: "Button.Collapse"
        case .confirm: "Button.Confirm"
        case .connect: "Button.Connect"
        case .copy: "Button.Copy"
        case .create: "Button.Create"
        case .customize: "Button.Customize"
        case .delete: "Button.Delete"
        case .deselect: "Button.Deselect"
        case .disconnect: "Button.Disconnect"
        case .dismiss: "Button.Dismiss"
        case .done: "Button.Done"
        case .download: "Button.Download"
        case .downloaded: "Button.Downloaded"
        case .edit: "Button.Edit"
        case .email: "Button.Email"
        case .end: "Button.End"
        case .enter: "Button.Enter"
        case .execute: "Button.Execute"
        case .exit: "Button.Exit"
        case .expand: "Button.Expand"
        case .export: "Button.Export"
        case .favorite: "Button.Favorite"
        case .filter: "Button.Filter"
        case .forward: "Button.Forward"
        case .help: "Button.Help"
        case .hide: "Button.Hide"
        case .import: "Button.Import"
        case .info: "Button.Info"
        case .install: "Button.Install"
        case .like: "Button.Like"
        case .load: "Button.Load"
        case .lock: "Button.Lock"
        case .login: "Button.Login"
        case .logout: "Button.Logout"
        case .menu: "Button.Menu"
        case .minimize: "Button.Minimize"
        case .mute: "Button.Mute"
        case .new: "Button.New"
        case .next: "Button.Next"
        case .ok: "Button.OK"
        case .open: "Button.Open"
        case .paste: "Button.Paste"
        case .pause: "Button.Pause"
        case .pin: "Button.Pin"
        case .play: "Button.Play"
        case .post: "Button.Post"
        case .preview: "Button.Preview"
        case .previous: "Button.Previous"
        case .print: "Button.Print"
        case .proceed: "Button.Proceed"
        case .purchase: "Button.Purchase"
        case .rate: "Button.Rate"
        case .record: "Button.Record"
        case .redo: "Button.Redo"
        case .refresh: "Button.Refresh"
        case .reject: "Button.Reject"
        case .reload: "Button.Reload"
        case .remove: "Button.Remove"
        case .removeFavorite: "Button.RemoveFavorite"
        case .removeLike: "Button.RemoveLike"
        case .rename: "Button.Rename"
        case .reply: "Button.Reply"
        case .report: "Button.Report"
        case .reset: "Button.Reset"
        case .resize: "Button.Resize"
        case .restart: "Button.Restart"
        case .restore: "Button.Restore"
        case .resume: "Button.Resume"
        case .retry: "Button.Retry"
        case .return: "Button.Return"
        case .save: "Button.Save"
        case .search: "Button.Search"
        case .select: "Button.Select"
        case .send: "Button.Send"
        case .settings: "Button.Settings"
        case .share: "Button.Share"
        case .show: "Button.Show"
        case .shuffle: "Button.Shuffle"
        case .sign: "Button.Sign"
        case .skip: "Button.Skip"
        case .sort: "Button.Sort"
        case .start: "Button.Start"
        case .stop: "Button.Stop"
        case .submit: "Button.Submit"
        case .subscribe: "Button.Subscribe"
        case .sync: "Button.Sync"
        case .tag: "Button.Tag"
        case .translate: "Button.Translate"
        case .undo: "Button.Undo"
        case .unlike: "Button.Unlike"
        case .unlock: "Button.Unlock"
        case .unmute: "Button.Unmute"
        case .unsubscribe: "Button.Unsubscribe"
        case .update: "Button.Update"
        case .upload: "Button.Upload"
        case .verify: "Button.Verify"
        case .view: "Button.View"
        case .zoom: "Button.Zoom"
        case .zoomIn: "Button.ZoomIn"
        case .zoomOut: "Button.ZoomOut"
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

struct MyLabelStyle: LabelStyle {

    func makeBody(configuration: Configuration) -> some View {
        VStack(spacing: 5) {
            configuration.icon.font(.headline)
            configuration.title.font(.footnote)
        }
    }
}


#Preview {
    
    @ViewBuilder
    @MainActor
    func buttons() -> some View {
        Section {
            ForEach(StandardButtonType.allCases) { type in
                Button(type) { print(type.title) }
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
    }
    .toolbar {
        ToolbarItemGroup {
            buttons()
        }
    }
}
