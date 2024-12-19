# Table of Contents
1. [Description](#description)
2. [Features](#features)
3. [Installation](#installation-swift-Package-manager)
4. [Usage](#usage)
5. [API Reference](#api-reference)
6. [Example Behavior](#example-behavior)
7. [Contributions](#contributions)
8. [License](#license)
9. [Author](#author)

# Description
ErrorWrapper is a lightweight and reusable SwiftUI library designed to handle errors gracefully within SwiftUI views. It provides an easy mechanism to display alerts when an error occurs and resets the error state automatically upon dismissal.

# Features
- Simple error handling structure (Error model) with title and description.
- A SwiftUI View extension to easily present alerts when errors occur.
- Automatic state reset when alerts are dismissed.

# Installation - Swift Package Manager
1. Open your Xcode project.
2. Go to File → Add Packages.
3. Enter the repository URL for your library.
```
https://github.com/isaqueDaSilva/ErrorWrapper.git
```
4. Add the Package to your project.

# Usage

## Use the provided Error struct to represent an error with a title and description.

``` swift
let exampleError = Error(title: "Network Error", description: "Unable to connect to the server.")
```

## Display an Alert Using errorAlert

To integrate error handling and show alerts, use the provided errorAlert view modifier:

``` swift
import SwiftUI

struct ContentView: View {
    @State private var error: Error? = nil

    var body: some View {
        VStack {
            Button("Trigger Error") {
                error = Error(title: "Oops!", description: "Something went wrong.")
            }
        }
        .errorAlert(error: $error) {
            // Action to perform after the alert is dismissed
            print("Alert dismissed")
        }
    }
}
```

## Explanation (errorAlert):
1. Takes a binding to an optional Error object.
2. Presents an alert if the error’s title or description is not nil.
3. Automatically resets the error state to nil when the alert is dismissed.

# API Reference

## Error Struct

The Error struct conforms to the Sendable protocol and has two properties:

``` swift
public struct Error: Sendable {
    public var title: String
    public var description: String
}
```

## View Extension - errorAlert

Adds an errorAlert modifier to any SwiftUI View:

``` swift
public func errorAlert(
    error: Binding<Error?>,
    @ViewBuilder action: @escaping () -> some View
) -> some View
```
- Parameters:
1. rror: A binding to the Error object that will trigger the alert.
2. action: A trailing closure that defines actions to execute when the alert is dismissed.

# Example Behavior
- An Error object is triggered (e.g., upon a failed network request).
- The errorAlert displays the alert using the Error’s title and description.
- When the user dismisses the alert, the error state resets automatically to nil.
- Optional actions can be provided to handle post-alert behavior.

# Contributions

Contributions are welcome! Feel free to submit pull requests or open issues.

# License

This library is available under the MIT License. See the LICENSE file for more details.

# Author

Developed by **Isaque da Silva.**
