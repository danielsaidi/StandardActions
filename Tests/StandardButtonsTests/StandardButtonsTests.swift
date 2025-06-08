import Testing
@testable import StandardButtons

func assertImage(
    for type: StandardButtonType,
    _ expectedName: String
) throws {
    #expect(type.imageName == expectedName)
}

@Test func standardButtonTypeDefinesCorrectNumberOfTypes() async throws {
    #expect(StandardButtonType.allCases.count == 114)
}

@Test func standardButtonTypeDefinesImage() async throws {
    try assertImage(for: .add, "plus")
    try assertImage(for: .removeLike, "heart.fill")
    try assertImage(for: .save, "checkmark")
    try assertImage(for: .search, "magnifyingglass")
    try assertImage(for: .select, "checkmark.circle")
    try assertImage(for: .share, "square.and.arrow.up")
}
