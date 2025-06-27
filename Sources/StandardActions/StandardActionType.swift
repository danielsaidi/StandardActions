//
//  StandardActionType.swift
//  StandardActions
//
//  Created by Daniel Saidi on 2024-04-30.
//  Copyright © 2025 Daniel Saidi. All rights reserved.
//

import SwiftUI

/// This enum defines standard button types.
///
/// Each button type defines a localized title, an image, as
/// well as a button role, and an optional keyboard shortcut.
///
/// ``SwiftUI/Button``, ``SwiftUI/Label`` and ``SwiftUI/Link``
/// can be created with a ``StandardActionType``. The custom
/// initializer will automatically apply the localized title,
/// icon, traits, etc. to the view.
public enum StandardActionType: String, CaseIterable, Identifiable, Sendable {
    case add, apply, archive, attach,
         back, bookmark, browse,
         cancel, call, close, collapseDown, collapseUp,
         confirm, copy, connect, create, customize,
         delete, deselect, disconnect, dismiss, done, download, duplicate,
         edit, email, end, enter, execute, exit,
         expandDown, expandUp, export,
         favorite, filter, forward,
         generateBarcode, generateQrCode,
         gitBranch, gitMerge, gitPull, gitPush,
         help, hide,
         `import`, info, install,
         learn, like, load, lock, login, logout, lookup,
         menu, minimize, mute,
         new, next,
         ok, open, openInSafari,
         paste, pause,
         pickImageFromLibrary, pickImageWithCamera,
         pin, play, post, preview, previous,
         print, proceed, purchase,
         rate, readMore, record, redo, refresh, reject, reload,
         remove, removeBookmark, removeDownload, removeFavorite, removeLike,
         rename, reply, report, reset, resize, restart,
         restore, resume, retry, `return`,
         save, scanDocument, search, select, send, settings,
         share, shareAsBarcode, shareAsQrCode,
         show, shuffle, sign, skip, sort, start, stop, submit, subscribe, sync,
         tag, takePhoto, translate,
         undo, uninstall, unlike, unlearn, unlock, unmute, unpin, unsubscribe,
         update, upload, uploadImageFromCamera, uploadImageFromLibrary,
         verify, view,
         zoom, zoomIn, zoomOut
}

public extension StandardActionType {

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
        case .collapseDown: "chevron.down"
        case .collapseUp: "chevron.up"
        case .confirm: "checkmark.circle"
        case .connect: "link"
        case .copy: "doc.on.doc"
        case .create: "plus.circle"
        case .customize: "slider.horizontal.3"
        case .delete: "trash"
        case .deselect: "checkmark.circle.fill"
        case .disconnect: "xmark"
        case .dismiss: "xmark"
        case .done: "checkmark"
        case .download: "arrow.down.circle"
        case .duplicate: "doc.on.doc"
        case .edit: "pencil"
        case .email: "envelope"
        case .end: "stop.circle"
        case .enter: "return"
        case .execute: "play.circle"
        case .exit: "rectangle.portrait.and.arrow.right"
        case .expandDown: "chevron.down"
        case .expandUp: "chevron.up"
        case .export: "square.and.arrow.up"
        case .favorite: "star"
        case .filter: "line.3.horizontal.decrease.circle"
        case .forward: "chevron.forward"
        case .generateBarcode: "barcode"
        case .generateQrCode: "qrcode"
        case .gitBranch: "arrow.trianglehead.branch"
        case .gitMerge: "arrow.trianglehead.merge"
        case .gitPull: "arrow.trianglehead.pull"
        case .gitPush: "arrow.circle"
        case .help: "questionmark.circle"
        case .hide: "eye.slash"
        case .import: "square.and.arrow.down"
        case .info: "info.circle"
        case .install: "arrow.down.app"
        case .learn: "lightbulb"
        case .like: "heart"
        case .load: "arrow.clockwise"
        case .lock: "lock"
        case .login: "person.crop.circle"
        case .logout: "rectangle.portrait.and.arrow.forward"
        case .lookup: "magnifyingglass"
        case .menu: "list.bullet"
        case .minimize: "minus.circle"
        case .mute: "speaker.slash"
        case .new: "plus"
        case .next: "arrow.right"
        case .ok: "checkmark"
        case .open: "folder"
        case .openInSafari: "safari"
        case .paste: "clipboard"
        case .pause: "pause.circle"
        case .pickImageFromLibrary: "photo.on.rectangle.angled"
        case .pickImageWithCamera: "camera"
        case .pin: "pin"
        case .play: "play.circle"
        case .post: "paperplane"
        case .preview: "eye"
        case .previous: "arrow.left"
        case .print: "printer"
        case .proceed: "arrow.right.circle"
        case .purchase: "cart"
        case .rate: "star"
        case .readMore: "ellipsis"
        case .record: "record.circle"
        case .redo: "arrow.clockwise"
        case .refresh: "arrow.clockwise"
        case .reject: "xmark.circle"
        case .reload: "arrow.clockwise.circle"
        case .remove: "trash"
        case .removeBookmark: "bookmark.fill"
        case .removeDownload: "arrow.down.circle.fill"
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
        case .scanDocument: "document.viewfinder"
        case .search: "magnifyingglass"
        case .select: "checkmark.circle"
        case .send: "paperplane"
        case .settings: "gearshape"
        case .share: "square.and.arrow.up"
        case .shareAsBarcode: "barcode"
        case .shareAsQrCode: "qrcode"
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
        case .takePhoto: "camera"
        case .translate: "character.bubble"
        case .undo: "arrow.uturn.backward"
        case .uninstall: "arrow.down.app.fill"
        case .unlearn: "lightbulb.fill"
        case .unlike: "hand.thumbsdown"
        case .unlock: "lock.open"
        case .unmute: "speaker.wave.2"
        case .unpin: "pin.slash"
        case .unsubscribe: "bell.slash"
        case .update: "arrow.triangle.2.circlepath"
        case .upload: "arrow.up.circle"
        case .uploadImageFromCamera: "camera"
        case .uploadImageFromLibrary: "photo.on.rectangle.angled"
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
        case .collapseDown, .collapseUp: "Button.Collapse"
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
        case .duplicate: "Button.Duplicate"
        case .edit: "Button.Edit"
        case .email: "Button.Email"
        case .end: "Button.End"
        case .enter: "Button.Enter"
        case .execute: "Button.Execute"
        case .exit: "Button.Exit"
        case .expandDown, .expandUp: "Button.Expand"
        case .export: "Button.Export"
        case .favorite: "Button.Favorite"
        case .filter: "Button.Filter"
        case .forward: "Button.Forward"
        case .generateBarcode: "Button.GenerateBarcode"
        case .generateQrCode: "Button.GenerateQrCode"
        case .gitBranch: "Button.GitBranch"
        case .gitMerge: "Button.GitMerge"
        case .gitPull: "Button.GitPull"
        case .gitPush: "Button.GitPush"
        case .help: "Button.Help"
        case .hide: "Button.Hide"
        case .import: "Button.Import"
        case .info: "Button.Info"
        case .install: "Button.Install"
        case .learn: "Button.Learn"
        case .like: "Button.Like"
        case .load: "Button.Load"
        case .lock: "Button.Lock"
        case .login: "Button.Login"
        case .logout: "Button.Logout"
        case .lookup: "Button.Lookup"
        case .menu: "Button.Menu"
        case .minimize: "Button.Minimize"
        case .mute: "Button.Mute"
        case .new: "Button.New"
        case .next: "Button.Next"
        case .ok: "Button.OK"
        case .open: "Button.Open"
        case .openInSafari: "Button.OpenInSafari"
        case .paste: "Button.Paste"
        case .pause: "Button.Pause"
        case .pickImageFromLibrary: "Button.PickFromLibrary"
        case .pickImageWithCamera: "Button.PickWithCamera"
        case .pin: "Button.Pin"
        case .play: "Button.Play"
        case .post: "Button.Post"
        case .preview: "Button.Preview"
        case .previous: "Button.Previous"
        case .print: "Button.Print"
        case .proceed: "Button.Proceed"
        case .purchase: "Button.Purchase"
        case .rate: "Button.Rate"
        case .readMore: "Button.ReadMore"
        case .record: "Button.Record"
        case .redo: "Button.Redo"
        case .refresh: "Button.Refresh"
        case .reject: "Button.Reject"
        case .reload: "Button.Reload"
        case .remove: "Button.Remove"
        case .removeBookmark: "Button.RemoveBookmark"
        case .removeDownload: "Button.Downloaded"
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
        case .scanDocument: "Button.ScanDocument"
        case .select: "Button.Select"
        case .send: "Button.Send"
        case .settings: "Button.Settings"
        case .share: "Button.Share"
        case .shareAsBarcode: "Button.ShareAsBarcode"
        case .shareAsQrCode: "Button.ShareAsQrCode"
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
        case .takePhoto: "Button.TakePhoto"
        case .translate: "Button.Translate"
        case .undo: "Button.Undo"
        case .uninstall: "Button.Uninstall"
        case .unlearn: "Button.Unlearn"
        case .unlike: "Button.Unlike"
        case .unlock: "Button.Unlock"
        case .unmute: "Button.Unmute"
        case .unpin: "Button.Unpin"
        case .unsubscribe: "Button.Unsubscribe"
        case .update: "Button.Update"
        case .upload: "Button.Upload"
        case .uploadImageFromCamera: "Button.UploadFromCamera"
        case .uploadImageFromLibrary: "Button.UploadFromLibrary"
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
        _ button: StandardActionType
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

public extension Button {

    /// Create a ``StandardActionType``-based button.
    init(
        _ type: StandardActionType,
        title: LocalizedStringKey? = nil,
        bundle: Bundle? = nil,
        action: @escaping () -> Void
    ) where Label == SwiftUI.Label<Text, Image?> {
        self.init(role: type.role, action: action) {
            Label(type, title: title, bundle: bundle)
        }
    }
}

public extension Label {

    /// Create a ``StandardActionType``-based label.
    init(
        _ type: StandardActionType,
        title: LocalizedStringKey? = nil,
        bundle: Bundle? = nil
    ) where Label == SwiftUI.Label<Text, Image?> {
        self.init(
            title: { Text(type, title: title, bundle: bundle) },
            icon: { type.image }
        )
    }
}

public extension Link {

    /// Create a ``StandardActionType``-based link.
    init(
        _ type: StandardActionType,
        title: LocalizedStringKey? = nil,
        bundle: Bundle? = nil,
        destination: URL
    ) where Label == SwiftUI.Label<Text, Image?> {
        self.init(destination: destination) {
            Label(type, title: title, bundle: bundle)
        }
    }
}

public extension Text {

    /// Create a ``StandardActionType``-based text.
    init(
        _ type: StandardActionType,
        title: LocalizedStringKey? = nil,
        bundle: Bundle? = nil
    ) {
        if let title {
            self.init(title, bundle: bundle ?? .main)
        } else {
            self.init(type.title, bundle: .module)
        }
    }
}

#Preview {

    struct Preview: View {

        @ViewBuilder
        @MainActor
        func buttons() -> some View {
            ForEach(StandardActionType.allCases) { type in
                Button(type) { print(type.title) }
            }
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
