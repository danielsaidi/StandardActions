//
//  StandardActionType.swift
//  StandardActions
//
//  Created by Daniel Saidi on 2024-04-30.
//  Copyright © 2025-2026 Daniel Saidi. All rights reserved.
//

import SwiftUI

/// This enum defines standard button types.
///
/// Each type defines a localized ``title``, an ``image``, a
/// ``role``, and an optional ``keyboardShortcut``.
///
/// The library extends `Button`, `Label` and `Link` with an
/// initializer that takes a ``StandardActionType`` and uses
/// it to apply a localized title, icon, traits, etc.
public enum StandardActionType: String, CaseIterable, Identifiable, Sendable {
    case add, apply, archive, attach,
         back, bookmark, browse,
         cancel, call, close,
         collapse, collapseDown, collapseUp,
         confirm, copy, connect, create, customize,
         delete, deselect, disconnect, dismiss, done, download, duplicate,
         edit, email, end, enter, execute, exit,
         expand, expandDown, expandUp,
         export,
         favorite, filter, forward, fullscreen,
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
         rename, reorder, reply, report, reset, resize, restart,
         restore, resume, retry, `return`,
         save, scanDocument, search, select, send, settings,
         share, shareAsBarcode, shareAsQrCode,
         show, showDetails,
         shuffle, sign, skip, sort, start, stop, submit, subscribe, sync,
         tag, takePhoto, translate,
         undo, uninstall, unlike, unlearn, unlock, unmute, unpin, unsubscribe,
         update, upload, uploadImageFromCamera, uploadImageFromLibrary,
         verify, view,
         zoom, zoomIn, zoomOut
}

public extension StandardActionType {

    /// This view can to render a standard action image with
    /// proper adjustments, if needed.
    struct Icon: View {

        public init(
            _ type: StandardActionType
        ) {
            self.type = type
        }

        private let type: StandardActionType

        public var body: some View {
            switch type {
            case .export, .share: type.image.offset(y: -2)
            default: type.image
            }
        }
    }
}

public extension StandardActionType {

    /// The button type's unique ID.
    var id: String { rawValue }

    /// The image symbol to use for the button type.
    var image: Image {
        .init(systemName: imageName)
    }

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
        case .collapse: "arrow.down.right.and.arrow.up.left.rectangle"
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
        case .expand: "arrow.up.left.and.arrow.down.right.rectangle"
        case .expandDown: "chevron.down"
        case .expandUp: "chevron.up"
        case .export: "square.and.arrow.up"
        case .favorite: "star"
        case .filter: "line.3.horizontal.decrease.circle"
        case .forward: "chevron.forward"
        case .fullscreen: "arrow.up.left.and.arrow.down.right.rectangle"
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
        case .reorder: "list.bullet"
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
        case .showDetails: "chevron.forward"
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
    var title: LocalizedStringResource {
        switch self {
        case .add: .buttonAdd
        case .apply: .buttonApply
        case .archive: .buttonArchive
        case .attach: .buttonAttach
        case .back: .buttonBack
        case .bookmark: .buttonBookmark
        case .browse: .buttonBrowse
        case .call: .buttonCall
        case .cancel: .buttonCancel
        case .close: .buttonClose
        case .collapse, .collapseDown, .collapseUp: .buttonCollapse
        case .confirm: .buttonConfirm
        case .connect: .buttonConnect
        case .copy: .buttonCopy
        case .create: .buttonCreate
        case .customize: .buttonCustomize
        case .delete: .buttonDelete
        case .deselect: .buttonDeselect
        case .disconnect: .buttonDisconnect
        case .dismiss: .buttonDismiss
        case .done: .buttonDone
        case .download: .buttonDownload
        case .duplicate: .buttonDuplicate
        case .edit: .buttonEdit
        case .email: .buttonEmail
        case .end: .buttonEnd
        case .enter: .buttonEnter
        case .execute: .buttonExecute
        case .exit: .buttonExit
        case .expand, .expandDown, .expandUp: .buttonExpand
        case .export: .buttonExport
        case .favorite: .buttonFavorite
        case .filter: .buttonFilter
        case .forward: .buttonForward
        case .fullscreen: .buttonFullscreen
        case .generateBarcode: .buttonGenerateBarcode
        case .generateQrCode: .buttonGenerateQrCode
        case .gitBranch: .buttonGitBranch
        case .gitMerge: .buttonGitMerge
        case .gitPull: .buttonGitPull
        case .gitPush: .buttonGitPush
        case .help: .buttonHelp
        case .hide: .buttonHide
        case .import: .buttonImport
        case .info: .buttonInfo
        case .install: .buttonInstall
        case .learn: .buttonLearn
        case .like: .buttonLike
        case .load: .buttonLoad
        case .lock: .buttonLock
        case .login: .buttonLogin
        case .logout: .buttonLogout
        case .lookup: .buttonLookup
        case .menu: .buttonMenu
        case .minimize: .buttonMinimize
        case .mute: .buttonMute
        case .new: .buttonNew
        case .next: .buttonNext
        case .ok: .buttonOk
        case .open: .buttonOpen
        case .openInSafari: .buttonOpenInSafari
        case .paste: .buttonPaste
        case .pause: .buttonPause
        case .pickImageFromLibrary: .buttonPickFromLibrary
        case .pickImageWithCamera: .buttonPickWithCamera
        case .pin: .buttonPin
        case .play: .buttonPlay
        case .post: .buttonPost
        case .preview: .buttonPreview
        case .previous: .buttonPrevious
        case .print: .buttonPrint
        case .proceed: .buttonProceed
        case .purchase: .buttonPurchase
        case .rate: .buttonRate
        case .readMore: .buttonReadMore
        case .record: .buttonRecord
        case .redo: .buttonRedo
        case .refresh: .buttonRefresh
        case .reject: .buttonReject
        case .reload: .buttonReload
        case .remove: .buttonRemove
        case .removeBookmark: .buttonRemoveBookmark
        case .removeDownload: .buttonDownloaded
        case .removeFavorite: .buttonRemoveFavorite
        case .removeLike: .buttonRemoveLike
        case .rename: .buttonRename
        case .reorder: .buttonReorder
        case .reply: .buttonReply
        case .report: .buttonReport
        case .reset: .buttonReset
        case .resize: .buttonResize
        case .restart: .buttonRestart
        case .restore: .buttonRestore
        case .resume: .buttonResume
        case .retry: .buttonRetry
        case .return: .buttonReturn
        case .save: .buttonSave
        case .search: .buttonSearch
        case .scanDocument: .buttonScanDocument
        case .select: .buttonSelect
        case .send: .buttonSend
        case .settings: .buttonSettings
        case .share: .buttonShare
        case .shareAsBarcode: .buttonShareAsBarcode
        case .shareAsQrCode: .buttonShareAsQrCode
        case .show: .buttonShow
        case .showDetails: .buttonShowDetails
        case .shuffle: .buttonShuffle
        case .sign: .buttonSign
        case .skip: .buttonSkip
        case .sort: .buttonSort
        case .start: .buttonStart
        case .stop: .buttonStop
        case .submit: .buttonSubmit
        case .subscribe: .buttonSubscribe
        case .sync: .buttonSync
        case .tag: .buttonTag
        case .takePhoto: .buttonTakePhoto
        case .translate: .buttonTranslate
        case .undo: .buttonUndo
        case .uninstall: .buttonUninstall
        case .unlearn: .buttonUnlearn
        case .unlike: .buttonUnlike
        case .unlock: .buttonUnlock
        case .unmute: .buttonUnmute
        case .unpin: .buttonUnpin
        case .unsubscribe: .buttonUnsubscribe
        case .update: .buttonUpdate
        case .upload: .buttonUpload
        case .uploadImageFromCamera: .buttonUploadFromCamera
        case .uploadImageFromLibrary: .buttonUploadFromLibrary
        case .verify: .buttonVerify
        case .view: .buttonView
        case .zoom: .buttonZoom
        case .zoomIn: .buttonZoomIn
        case .zoomOut: .buttonZoomOut
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

@MainActor
public extension Button {

    /// Create a ``StandardActionType``-based button.
    init(
        _ type: StandardActionType,
        title: LocalizedStringResource? = nil,
        action: @escaping () -> Void
    ) where Label == SwiftUI.Label<Text, StandardActionType.Icon?> {
        self.init(role: type.role, action: action) {
            Label(type, title: title)
        }
    }
}

@MainActor
public extension Label {

    /// Create a ``StandardActionType``-based label.
    init(
        _ type: StandardActionType,
        title: LocalizedStringResource? = nil
    ) where Label == SwiftUI.Label<Text, StandardActionType.Icon?> {
        self.init(
            title: { Text(type, title: title) },
            icon: { StandardActionType.Icon(type) }
        )
    }
}

@MainActor
public extension Link {

    /// Create a ``StandardActionType``-based link.
    init(
        _ type: StandardActionType,
        title: LocalizedStringResource? = nil,
        destination: URL
    ) where Label == SwiftUI.Label<Text, StandardActionType.Icon?> {
        self.init(destination: destination) {
            Label(type, title: title)
        }
    }
}

@MainActor
public extension NavigationLink {

    /// Create a ``StandardActionType``-based navigation link.
    init<Value: Hashable>(
        _ type: StandardActionType,
        title: LocalizedStringResource? = nil,
        value: Value?
    ) where Destination == Never, Label == SwiftUI.Label<Text, StandardActionType.Icon?> {
        self.init(value: value) {
            Label(type, title: title)
        }
    }
}

public extension Text {

    /// Create a ``StandardActionType``-based text element.
    init(
        _ type: StandardActionType,
        title: LocalizedStringResource? = nil
    ) {
        self.init(title ?? type.title)
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
                    Section {
                        Button(.export) {}
                    }

                    Section {
                        buttons().labelStyle(.titleAndIcon)
                    }
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
