# ``StandardButtons``

StandardButtons is a SwiftUI library that makes it easy to create standard button types, with localized titles and icons.


## Overview

![Library logotype](Logo.png)

StandardButtons has a ``StandardButtonType`` that can be used to create standard buttons with a localized title, icon, role, etc.   



## Installation

StandardButtons can be installed with the Swift Package Manager:

```
https://github.com/danielsaidi/StandardButtons.git
```



## Getting started

This library contains a ``StandardButtonType`` with a bunch of predefined types, like ``StandardButtonType/add``, ``StandardButtonType/delete``, ``StandardButtonType/edit``, ``StandardButtonType/done``, etc. Each button type defines a localized ``StandardButtonType/title``, as well as an  ``StandardButtonType/image``, a ``StandardButtonType/role``, and an optional ``StandardButtonType/keyboardShortcut``.

You can use the ``SwiftUI/Button``. ``SwiftUI/Button/init(_:action:)``  initializer to create a standard button with all those properties applied, for instance:

```swift
Button(.add) { 
    // Add your custom add logic here
}
```

The code above will render correctly on all major Apple platforms. You can use view modifiers and button styles to customize it further.



## Localization

This library is localized in the following languages:

* 🇺🇸 English (US)
* 🇸🇪 Swedish

Use `Sources/StandardButtons/Resources/Localizable.xcstrings` to add support for more languages.  



## Repository

For more information, source code, etc., visit the [project repository][Repository].



## License

StandardButtons is available under the MIT license.



## Topics

### Articles

- <doc:Getting-Started>

### Essentials

- ``ApiEnvironment``
- ``ApiRoute``
- ``ApiClient``
- ``ApiError``
- ``ApiRequest``
- ``ApiResult``

### HTTP

- ``HttpMethod``

### Integrations

- ``TheMovieDb``
- ``Yelp``

[Repository]: https://github.com/danielsaidi/StandardButtons
