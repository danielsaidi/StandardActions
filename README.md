<p align="center">
    <img src="Resources/Icon.png" alt="Project Icon" width="250" />
</p>

<p align="center">
    <img src="https://img.shields.io/github/v/release/danielsaidi/StandardButtons?color=%2300550&sort=semver" alt="Version" title="Version" />
    <img src="https://img.shields.io/badge/swift-6.0-orange.svg" alt="Swift 6.0" />
    <a href="https://danielsaidi.github.io/StandardButtons"><img src="https://img.shields.io/badge/documentation-web-blue.svg" alt="Documentation" /></a>
    <img src="https://img.shields.io/github/license/danielsaidi/StandardButtons" alt="MIT License" title="MIT License" />
</p>


# StandardButtons

StandardButtons is a SwiftUI library that lets you create standard button types, with localized titles, icons & roles.

<p align="center">
    <img src="Resources/Preview.jpg" alt="StandardButtons preview" />
</p>

StandardButtons has many predefined types, like ``.add``, ``.delete``, ``.edit``, ``.done``, etc. Each button type has a localized ``.title``, an ``.image``, a ``.role``, and an optional ``.keyboardShortcut``.



## Installation

StandardButtons can be installed with the Swift Package Manager:

```
https://github.com/danielsaidi/StandardButtons.git
```



## Getting Started

With StandardButtons, just `import StandardButtons` and use `Button(_:action:)` to create a standard button:

```swift
Button(.add) { 
    // Add your custom add logic here
}
```

The code above will render a regular SwiftUI `Button` on all major Apple platforms. You can use view modifiers and button styles to customize it further.



## Localization

This library is localized in the following languages:

* 🇺🇸 English (US)
* 🇸🇪 Swedish

You can add more locales to the `Localizable.xcstrings` file in the `Resources` folder.  



## Documentation

The online [documentation][Documentation] has more information, articles, code examples, etc.



## Demo Application

This repository will get a demo app after it reaches 100 stars.



## Support my work 

You can [sponsor me][Sponsors] on GitHub Sponsors or [reach out][Email] for paid support, to help support my [open-source projects][OpenSource].

Your support makes it possible for me to put more work into these projects and make them the best they can be.



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
