# Columbina's MaskedUITextField

A UITextField with fully customizable formatter.
 
[![Masked-UIText-Field.gif](https://i.postimg.cc/kG4NXqYZ/Masked-UIText-Field.gif)](https://postimg.cc/qhP61VTX)

## Quick start
 
### 1. Import the module

```swift
import MaskedUITextField
```

### 2. Define a MaskedFormatter

Use the [MaskedFormatter](https://github.com/Columbina/MaskedFormatter) framework in order to create a mask:

```swift
let mask = "##/$$-@@"

let rules = [
    MaskedFormatter.Rule(maskCharacter: "#", validation: { $0.isNumber }),
    MaskedFormatter.Rule(maskCharacter: "$", validation: { $0.isLetter }),
    MaskedFormatter.Rule(maskCharacter: "@", validation: { (Int(String($0)) ?? 0) >= 5 })
]

let maskedFormatter = MaskedFormatter(mask: mask, rules: rules)
```

### 3. Instantiate a MaskedUITextField

```swift
let textField = MaskedUITextField(formatter: maskedFormatter)
```
Alternatively:
```swift
let textField = MaskedUITextField()
textField.formatter = maskedFormatter
```
