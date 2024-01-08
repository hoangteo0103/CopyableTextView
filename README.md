# CopyableTextView Package

## Overview

The `CopyableTextView` package provides a SwiftUI view that wraps a `UITextView` with enhanced features such as copyability, link detection, and customizable text attributes.

## Features

- **Copyability**: Allows users to copy text content by long-pressing on the text view.

- **Link Detection**: Automatically detects and highlights links within the text view when enabled.

- **Customization**: Offers customization options for font size, font weight, text color, and line spacing.

## Usage

### CopyAbleTextRepresentable

A `UIViewRepresentable` struct that encapsulates a `LinkTextView` and its configurations.

#### Parameters

- `fontSize`: The font size of the text.
- `weight`: The font weight of the text.
- `color`: The color of the text.
- `isCopyable`: A boolean indicating whether the text is copyable.
- `isDetectLink`: A boolean indicating whether to detect and highlight links in the text.
- `lineSpacing`: The spacing between lines in the text.
- `text`: A binding to the text content.
- `height`: A binding to the height of the text view.
- `attributedText`: A binding to the attributed text content.

### LinkTextView

A subclass of `UITextView` that supports enhanced functionality for link detection and text customization.

#### Methods

- `setup(lineSpacing:)`: Configures line spacing for the text view.

#### Properties

- `shouldAllowSelect`: A boolean indicating whether text selection is allowed.

### CopyableTextView

A SwiftUI view that utilizes `CopyAbleTextRepresentable` for easy integration into SwiftUI-based applications.

#### Parameters

- `fontSize`: The font size of the text.
- `weight`: The font weight of the text.
- `color`: The color of the text.
- `isCopyable`: A boolean indicating whether the text is copyable.
- `isDetectLink`: A boolean indicating whether to detect and highlight links in the text.
- `text`: A binding to the text content.
- `height`: A binding to the height of the text view.
- `attributedText`: A binding to the attributed text content.

## Example Usage

```swift
import SwiftUI
import CopyableTextView

struct ContentView: View {
    @State private var text = "Hello, CopyableTextView!"
    @State private var height: CGFloat = 100.0
    @State private var attributedText: NSMutableAttributedString?

    var body: some View {
        VStack {
            CopyableTextView(
                fontSize: 18,
                weight: .regular,
                color: .black,
                isCopyable: true,
                isDetectLink: true,
                lineSpacing: 4,
                text: $text,
                height: $height,
                attributedText: $attributedText
            )
            .frame(height: height)
        }
        .padding()
    }
}


https://github.com/hoangteo0103/CopyableTextView/assets/51512556/f0be7897-85cf-47b4-8305-00c3545e6583



```

## Installation

Add the `CopyableTextView` package to your project using Swift Package Manager.

```swift
dependencies: [
    .package(url: "https://github.com/hoangteo0103/CopyableTextView.git", from: "1.0.0")
]
```

## License

This package is released under the MIT License. See [LICENSE](LICENSE) for details.
