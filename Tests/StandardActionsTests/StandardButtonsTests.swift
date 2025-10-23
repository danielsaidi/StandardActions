import StandardActions
import SwiftUI
import Testing

@MainActor
class StandardActionsTests {

    func assertImage(
        for type: StandardActionType,
        _ expectedName: String
    ) throws {
        #expect(type.imageName == expectedName)
    }

    @Test
    func StandardActionTypeDefinesCorrectNumberOfTypes() async throws {
        #expect(StandardActionType.allCases.count == 139)
    }

    @Test
    func StandardActionTypeDefinesImage() async throws {
        try assertImage(for: .add, "plus")
        try assertImage(for: .removeLike, "heart.fill")
        try assertImage(for: .save, "checkmark")
        try assertImage(for: .search, "magnifyingglass")
        try assertImage(for: .select, "checkmark.circle")
        try assertImage(for: .share, "square.and.arrow.up")
    }

    @Test
    func nativeViewsHaveStandardActionTypeInitializers() {
        _ = Button(StandardActionType.copy) {}
        _ = Label(StandardActionType.copy)
        _ = Link(
            StandardActionType.copy,
            destination: URL(string: "https://example.com")!
        )
    }
}
