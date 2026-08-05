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
    func definesCorrectNumberOfTypes() async throws {
        #expect(StandardActionType.allCases.count == 140)
    }

    @Test
    func definesImage() async throws {
        try assertImage(for: .add, "plus")
        try assertImage(for: .removeLike, "heart.fill")
        try assertImage(for: .save, "checkmark")
        try assertImage(for: .search, "magnifyingglass")
        try assertImage(for: .select, "checkmark.circle")
        try assertImage(for: .share, "square.and.arrow.up")
    }

    @Test
    func extendsNativeTypes() {
        let url = URL(string: "https://example.com")!
        _ = Button(StandardActionType.copy) {}
        _ = Label(StandardActionType.copy)
        _ = Link(StandardActionType.copy, destination: url)
        _ = NavigationLink(StandardActionType.copy, value: StandardActionType.add)
        _ = Text(StandardActionType.copy)
    }
}
