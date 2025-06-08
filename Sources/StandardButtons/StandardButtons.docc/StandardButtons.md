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

With StandardButtons, just `import StandardButtons` and use ``SwiftUI/Button``. ``SwiftUI/Button/init(_:action:)`` to create a standard button view:

```swift
Button(.add) { 
    // Add your custom add logic here
}
```

The code above will render a regular SwiftUI ``SwiftUI/Button`` and works on all major Apple platforms (iOS, macOS, tvOS, watchOS, visionOS).



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
