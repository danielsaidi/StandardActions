# ``ButtonKit``

ButtonKit is a SwiftUI library with button-specific utilities.


## Overview

![Library logotype](Logo.png)

ButtonKit has a ``StandardButtonType`` that simplifies creating standard buttons, with a pre-defined localized title, icon, role, etc. 

The library will be extended with more SwiftUI button utilities in the future.  



## Installation

ButtonKit can be installed with the Swift Package Manager:

```
https://github.com/danielsaidi/ButtonKit.git
```



## Getting started

For now, this library only contains a ``StandardButtonType`` with the following types:

```
add, addToFavorites,
cancel, call, close, copy,
delete, deselect, done,
edit, email, export,
like,
ok,
paste,
removeFromFavorites, removeLike,
save, search, select, share
```

A standard button type defines a standard ``StandardButtonType/title``,  ``StandardButtonType/image``,  ``StandardButtonType/role``, and ``StandardButtonType/keyboardShortcut``.

You can use the ``SwiftUI/Button``. ``SwiftUI/Button/init(_:action:)``  initializer to create a standard button with all those properties applied, for instance:

```swift
Button(.add) { 
    // Add your custom add logic here
}
```

The button above will render properly on all major Apple platforms, and use proper localization. You can apply any view modifiers and button styles to the button to customize it.



## Repository

For more information, source code, etc., visit the [project repository][Repository].



## License

ButtonKit is available under the MIT license.



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

[Repository]: https://github.com/danielsaidi/ButtonKit
