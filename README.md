<p align="center">
    <img src="Resources/Icon.png" alt="Project Icon" width="250" />
</p>

<p align="center">
    <img src="https://img.shields.io/github/v/release/danielsaidi/StandardButtons?color=%2300550&sort=semver" alt="Version" title="Version" />
    <img src="https://img.shields.io/badge/swift-6.0-orange.svg" alt="Swift 6.0" />
    <a href="https://danielsaidi.github.io/StandardButtons"><img src="https://img.shields.io/badge/documentation-web-blue.svg" alt="Documentation" /></a>
    <a href="https://github.com/danielsaidi/StandardButtons/blob/master/LICENSE"><img src="https://img.shields.io/github/license/danielsaidi/StandardButtons" alt="MIT License" /></a>
    <a href="https://github.com/sponsors/danielsaidi"><img src="https://img.shields.io/badge/sponsor-GitHub-red.svg" alt="Sponsor my work" /></a>
</p>


# StandardButtons

StandardButtons is a SwiftUI library that lets you create standard button types, with localized titles, icons & roles.

<p align="center">
    <img src="Resources/Preview.jpg" alt="StandardButtons preview" />
</p>

StandardButtons has a ``StandardButtonType`` enum that defines **120** common actions, like ``.add``, ``.remove``, etc., as well as a ``StandardToggleType`` enum with common values, and ``StandardAction`` with common actions, etc.

Each ``StandardButtonType`` has a localized ``.title``, an ``.image``, a ``.role``, and an optional ``.keyboardShortcut``. These properties will automatically be applied when you create type-based buttons, labels, links, and toggles.



## Installation

StandardButtons can be installed with the Swift Package Manager:

```
https://github.com/danielsaidi/StandardButtons.git
```


## Support My Work

You can [become a sponsor][Sponsors] to help me dedicate more time on my various [open-source tools][OpenSource]. Every contribution, no matter the size, makes a real difference in keeping these tools free and actively developed.



## Getting Started

You can create ``Button``, ``Label`` and ``Link`` views for any ``StandardButtonType``. This automatically applies the localized title, icon, role, shortcut, accessibility, etc. for the provided button type:

```swift
Button(.add) { ... }
Label(.add) { ... }
Link(.email, destination: .email(...))
```

You can create ``Toggle`` views for any ``StandardToggleType`` and a boolean binding. This automatically applies the localized title, icon, role, shortcut, accessibility, etc. for the provided toggle type, based on the toggle state:

```swift
Toggle(.isVisible, isOn: $isVisible)
```

You can use ``StandardAction`` to generate a standard control for common actions, like ``.call(phoneNumber:)``, ``.copy(_:)``, ``.email(address:)``, and ``.openUrl(_:)``.

```swift
/// Render a control for the provided action
StandardActionControl(.email(address: "daniel@gmail.com"))

/// Render a list item with the action as a trailing action
StandardActionListItem(
    title: ..., 
    text: ..., 
    action: .email(address: "daniel@gmail.com")
)
```

You can also use URL extensions like ``.call(number:)`` and ``.email(address:)`` to generate URLs for common URL-based actions.



## Localization

This library is localized in the following languages:

* 🇩🇰 Danish 
* 🇺🇸 English (US)
* 🇫🇷 French
* 🇬🇪 Georgian
* 🇩🇪 German
* 🇳🇴 Norwegian Bokmål
* 🇪🇸 Spanish
* 🇸🇪 Swedish

You can add more locales to the `Localizable.xcstrings` file in the `Resources` folder, then localize them as described in [this blog post](https://danielsaidi.com/blog/2025/06/08/using-ai-and-cursor-to-localize-xcode-string-catalogs).




## Documentation

The online [documentation][Documentation] has more information, articles, code examples, etc.



## Demo Application

This repository will get a demo app after it reaches 100 stars.



## Contact

Feel free to reach out if you have questions, or want to contribute in any way:

* Website: [danielsaidi.com][Website]
* E-mail: [daniel.saidi@gmail.com][Email]
* Bluesky: [@danielsaidi@bsky.social][Bluesky]
* Mastodon: [@danielsaidi@mastodon.social][Mastodon]



## License

StandardButtons is available under the MIT license. See the [LICENSE][License] file for more info.



[Email]: mailto:daniel.saidi@gmail.com
[Website]: https://danielsaidi.com
[GitHub]: https://github.com/danielsaidi
[OpenSource]: https://danielsaidi.com/opensource
[Sponsors]: https://github.com/sponsors/danielsaidi

[Bluesky]: https://bsky.app/profile/danielsaidi.bsky.social
[Mastodon]: https://mastodon.social/@danielsaidi
[Twitter]: https://twitter.com/danielsaidi

[Documentation]: https://danielsaidi.github.io/StandardButtons
[License]: https://github.com/danielsaidi/StandardButtons/blob/master/LICENSE
