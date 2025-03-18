# GCodeCoder Library

## Introduction

GCodeCoder is a Swift library that simplifies the process of parsing and decoding G-code commands. Whether you're building applications for CNC machines, 3D printers, or other automated equipment, this library converts raw G-code strings into structured, type-safe objects that you can use in your application logic.

## Getting Started

```swift
import GCodeCoder

// Example G-code program for a CNC machine
let gcodeProgram = """
G1 X50 Y100 ; Move in a straight line
G0 X0 Y0    ; Rapid repositioning
"""

do {
    let commands = try GCodeDecoder.decode(data: gcodeProgram)
    for command in commands {
        switch command {
        case let g00 as GCode_G00:
             // do something
        case let g01 as GCode_G01:
            // do something
        case let g04 as GCode_G04:
        // do something
        default:
            print("\(gcode.letter) not supported!")
        }
    }
} catch error {
    print("Failed to decode G-code: \(error)")
}
```

### Requirements

- Swift 5 or later
- Zero dependencies
- Cross-platform compatibility (macOS, iOS, Linux etc.)

### Installation (via Swift Package Manager)

To integrate GCodeCoder into your project, add the following dependency to your `Package.swift` file:

```swift
dependencies: [
    .package(url: "https://github.com/janhendry/GCodeCoder.git", .branch("master"))
],
targets: [
    .target(
        name: "YourTargetName",
        dependencies: ["GCodeCoder"]
    )
]
```

Alternatively, if you are using Xcode's Swift Package Manager integration, follow these steps:

Go to File > Swift Packages > Add Package Dependency...
Enter the repository URL:
https://github.com/janhendry/GCodeCoder.git
Select the master branch.

## API Reference

### Commands

- GCode_G00
- GCode_G01
- GCode_G04
- GCode_G06
- GCode_G92
- GCode_M01
- GCode_M280

### GCodeDecoder

- **`static func decode(data: String) throws -> [GCodeDecodable]`**  
  Parses a multi-line G-code string and returns an array of command objects.

- **`static func decode(line: String) throws -> GCodeDecodable?`**  
  Decodes a single line of G-code into a command object.

### GCode

- **`init(letter: Letter, n: Int? = nil, x: String? = nil, ... )`**  
  Constructs a `GCode` object with optional parameters.

- **`init(_ list: [(Character, String?)]) throws`**  
  Initializes a `GCode` object from a list of tokens parsed from a G-code line.

### GCodeDecodable

Each command conforms to the `GCodeDecodable` protocol and implements:

- **`init(gcode: GCode) throws`**  
  Initializes the command object from a `GCode` instance, converting and validating parameters as needed.

## Extending GCodeCoder

- **Adding New Commands:**  
  To support new G-code commands, create a new command class that conforms to `GCodeDecodable` and add the appropriate case in `GCodeDecoder.decode(gcode:)`.

- **Enhancing Parsing:**  
  Modify `GCodeParser` if you need to handle more complex G-code formats or additional comment styles.

## Support and Contribution

If you encounter issues or want to contribute to the project, please refer to the project repository for issue tracking and contribution guidelines.
