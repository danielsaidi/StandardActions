# ``StandardButtons``

StandardButtons is a SwiftUI library that makes it easy to create standard button types.


## Overview

![Library logotype](Logo.png)

StandardButtons is a SwiftUI library that lets you create standard button types, with localized titles, icons, roles and keyboard shortcuts.

StandardButtons defines **110+** standard button types, like ``StandardButtonType/add``, ``StandardButtonType/delete``, ``StandardButtonType/edit``, ``StandardButtonType/done``, etc. Each button type has a localized ``StandardButtonType/title``, an ``StandardButtonType/image``, and a ``StandardButtonType/role``, as well as an optional ``StandardButtonType/keyboardShortcut``.


## Installation

StandardButtons can be installed with the Swift Package Manager:

```
https://github.com/danielsaidi/StandardButtons.git
```


## Support My Work

You can [become a sponsor][Sponsors] to help me dedicate more time on my various [open-source tools][OpenSource]. Every contribution, no matter the size, makes a real difference in keeping these tools free and actively developed.



## Getting started

StandardButtons has ``StandardButtonType``-based  ``SwiftUI/Button``, ``SwiftUI/Label``, and ``SwiftUI/Link`` initializers to let you create standard control views:

```swift
Button(.add) { ... }
Label(.add) { ... }
Link(.email, destination: .email(...))
```

This will render regular controls that works on all major Apple platforms (iOS, macOS, tvOS, watchOS, visionOS), that applies a proper icon, localized title, role, accessibility traits, etc for the providd button type.

You can use the ``StandardAction`` enum to generate a ``StandardAction/control`` for common actions, like ``StandardAction/call(phoneNumber:)``, ``StandardAction/copy(_:)``, ``StandardAction/email(address:)``, and ``StandardAction/openUrl(_:)``.

```swift
StandardAction.email(address: "daniel@gmail.com")
```

You can also use URL extensions like ``Foundation/URL/call(number:)`` and ``Foundation/URL/email(address:)`` to generate URLs for common actions. These are used by the ``StandardAction`` when generating call and email action controls. 




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



[Repository]: https://github.com/danielsaidi/StandardButtons

[Email]: mailto:daniel.saidi@gmail.com
[Website]: https://danielsaidi.com
[GitHub]: https://github.com/danielsaidi
[OpenSource]: https://danielsaidi.com/opensource
[Sponsors]: https://github.com/sponsors/danielsaidi
