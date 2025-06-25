# ``StandardButtons``

StandardButtons is a SwiftUI library that makes it easy to create standard button types.


## Overview

![Library logotype](Logo.png)

StandardButtons is a SwiftUI library that lets you create standard button types, with localized titles, icons, roles and keyboard shortcuts.

StandardButtons has a ``StandardButtonType`` enum that defines **120** common actions, like ``StandardButtonType/add``, ``StandardButtonType/remove``, ``StandardButtonType/like``, and ``StandardButtonType/subscribe``, as well as a ``StandardToggleType`` enum with common toggle values, and ``StandardAction`` with common actions, etc.

Each ``StandardButtonType`` has a localized ``StandardButtonType/title``, an ``StandardButtonType/image``, a ``StandardButtonType/role``, and an optional ``StandardButtonType/keyboardShortcut``. These properties will automatically be applied when you create type-based buttons, labels, links, and toggles.


## Installation

StandardButtons can be installed with the Swift Package Manager:

```
https://github.com/danielsaidi/StandardButtons.git
```


## Support My Work

You can [become a sponsor][Sponsors] to help me dedicate more time on my various [open-source tools][OpenSource]. Every contribution, no matter the size, makes a real difference in keeping these tools free and actively developed.



## Getting started

You can create ``SwiftUI/Button``, ``SwiftUI/Label`` and ``SwiftUI/Link`` views for any ``StandardButtonType``. This automatically applies the localized title, icon, role, shortcut, accessibility, etc. for the provided button type:

```swift
Button(.add) { ... }
Label(.add) { ... }
Link(.email, destination: .email(...))
```

You can create ``SwiftUI/Toggle`` views for any ``StandardToggleType`` and a boolean binding. This automatically applies the localized title, icon, role, shortcut, accessibility, etc. for the provided toggle type, based on the toggle state:

```swift
Toggle(.isVisible, isOn: $isVisible)
```

You can also use ``StandardAction`` to generate a standard control for common actions, like ``StandardAction/call(phoneNumber:)``, ``StandardAction/copy(_:)``, ``StandardAction/email(address:)``, and ``StandardAction/openUrl(_:)``.

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

You can also use URL extensions like ``Foundation/URL/call(number:)`` and ``Foundation/URL/email(address:)`` to generate URLs for common URL-based actions.



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

You can add more locales to the `Localizable.xcstrings` file in the `Resources` folder.  



## Repository

For more information, source code, etc., visit the [project repository][Repository].



## License

StandardButtons is available under the MIT license.



## Topics

### Essentials

- ``StandardButtonType``
- ``StandardToggleType``

### Actions

- ``StandardAction``
- ``StandardActionControl``
- ``StandardActionListItem``



[Repository]: https://github.com/danielsaidi/StandardButtons

[Email]: mailto:daniel.saidi@gmail.com
[Website]: https://danielsaidi.com
[GitHub]: https://github.com/danielsaidi
[OpenSource]: https://danielsaidi.com/opensource
[Sponsors]: https://github.com/sponsors/danielsaidi
