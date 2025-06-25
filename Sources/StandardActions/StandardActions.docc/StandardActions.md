# ``StandardActions``

A SwiftUI library with standard action types.


## Overview

![Library logotype](Logo.png)

StandardActions is a SwiftUI library that defines standard action types with localized titles, icons, button roles, keyboard shortcuts, etc.

StandardActions has a ``StandardActionType`` enum that defines **121** actions, like ``StandardActionType/add``, ``StandardActionType/remove``, etc., a ``StandardToggleType`` enum with common toggle values, and a ``StandardAction`` with common actions, etc.

Each ``StandardActionType`` has a localized ``StandardActionType/title``, an ``StandardActionType/image``, a ``StandardActionType/role``, and an optional ``StandardActionType/keyboardShortcut``. These properties will automatically be applied when you create type-based buttons, labels, links, and toggles.


## Installation

StandardActions can be installed with the Swift Package Manager:

```
https://github.com/danielsaidi/StandardActions.git
```


## Support My Work

You can [become a sponsor][Sponsors] to help me dedicate more time on my various [open-source tools][OpenSource]. Every contribution, no matter the size, makes a real difference in keeping these tools free and actively developed.



## Getting started

You can create a ``SwiftUI/Button``, ``SwiftUI/Label`` and ``SwiftUI/Link`` for any ``StandardActionType``. This will automatically apply a localized title, icon, etc.

```swift
Button(.add) { ... }
Label(.add) { ... }
Link(.email, destination: .email(...))
```

You can create a ``SwiftUI/Toggle`` for any ``StandardToggleType``. This applies the localized title, icon, etc. for the type, based on the state:

```swift
Toggle(.isVisible, isOn: $isVisible)
```

You can use ``StandardAction`` to generate a standard control for common actions, like ``StandardAction/call(phoneNumber:)``, ``StandardAction/copy(_:)``, etc.

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

StandardActions is available under the MIT license.



## Topics

### Essentials

- ``StandardAction``
- ``StandardActionType``
- ``StandardToggleType``

### Views

- ``StandardActionControl``
- ``StandardActionListItem``



[Repository]: https://github.com/danielsaidi/StandardActions

[Email]: mailto:daniel.saidi@gmail.com
[Website]: https://danielsaidi.com
[GitHub]: https://github.com/danielsaidi
[OpenSource]: https://danielsaidi.com/opensource
[Sponsors]: https://github.com/sponsors/danielsaidi
