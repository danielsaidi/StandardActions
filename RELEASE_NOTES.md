# Release Notes

[StandardButtons](https://github.com/danielsaidi/StandardActions) will use semver after 1.0. 

Until then, breaking changes can happen in any version, and deprecated features may be removed in any minor version bump.



## 0.9.3

### ✨ Features

* `StandardAction` can now trigger an additional action.
 


## 0.9.2

### ✨ Features

* `Text` can now be created with a standard action type.
* `Button`, `Label` and `Link` can now customize their title.
 


## 0.9.1

### ✨ Features

* `StandardAction` gets new image and git-related actions, bringing the total number of actions to 131.
 


## 0.9

After the new additions, the name StandardButtons felt wrong.

As such, the project has now been renamed to StandardActions.

### ✨ Features

* `StandardActionType` has a new `.duplicate` type.



## 0.8

### ✨ Features

* `StandardActionControl` is a new view for rendering actions.
* `StandardActionType` has new types and renames some button types.
* `StandardToggleType` is a new type for handling common toggle values.



## 0.7.2

### ✨ Features

* `StandardActionListItem` now has an optional action.



## 0.7.1

### ✨ Features

* `StandardActionListItem` is a new view for rendering list items.



## 0.7

This version adds standard actions and URLs. 

### ✨ Features

* `StandardAction` defines commonly used actions.
* `StandardAction` can create a configured button.
* `URL` has standard `.call(...)` and `.email(...)` builders.



## 0.6

This version adds more button types and localized support. 

### ✨ Features

* `StandardActionType` has new `.learn`, `.openInSafari`, and `.readMore` types.

### 🌐 New Localization

* 🇩🇰 Danish 
* 🇳🇴 Norwegian Bokmål



## 0.5

This version adds improved label support. 

### ✨ Features

* `Label` can now be created with a standard button type.
* `Link` can now be created with a standard button type. 



## 0.4.1

This version adds support for French. 

### 🌐 New Localization

* 🇫🇷 French, thanks to [@Dean151](https://github.com/Dean151). 



## 0.4

This version adds support for Georgian. 

### 🌐 New Localization

* 🇬🇪 Georgian, thanks to [@desp0o](https://github.com/desp0o). 



## 0.3

This version supports 110 standard button types and adds support for German and Spanish. 

### ✨ Features

* This version adds MANY new standard button types.

### 🌐 New Localization

* 🇩🇪 German, thanks to [@nidegen](https://github.com/nidegen). 
* 🇪🇸 Spanish. 



## 0.2

This version renames the library to `StandardButtons`. 



## 0.1

This version adds a new `StandardActionType`.

You can use this with the `Button` initializer, to create a standard button. 
