import Testing
@testable import ButtonKit

func assertImage(
    for type: StandardButtonType,
    _ expectedName: String
) throws {
    #expect(type.imageName == expectedName)
}

@Test func standardButtonTypeDefinesImage() async throws {
    try assertImage(for: .add, "plus")
    try assertImage(for: .addToFavorites, "star")
    try assertImage(for: .cancel, "xmark")
    try assertImage(for: .close, "xmark.circle")
    try assertImage(for: .call, "phone")
    try assertImage(for: .copy, "doc.on.doc")
    try assertImage(for: .delete, "trash")
    try assertImage(for: .deselect, "checkmark.circle.fill")
    try assertImage(for: .done, "checkmark")
    try assertImage(for: .edit, "pencil")
    try assertImage(for: .email, "envelope")
    try assertImage(for: .export, "square.and.arrow.up")
    try assertImage(for: .like, "heart")
    try assertImage(for: .ok, "checkmark")
    try assertImage(for: .paste, "clipboard")
    try assertImage(for: .removeFromFavorites, "star.fill")
    try assertImage(for: .removeLike, "heart.fill")
    try assertImage(for: .save, "checkmark")
    try assertImage(for: .search, "magnifyingglass")
    try assertImage(for: .select, "checkmark.circle")
    try assertImage(for: .share, "square.and.arrow.up")
}
