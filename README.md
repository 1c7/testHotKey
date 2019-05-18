## Swift macOS app - Demo for `Hotkey`

### What is this?
Show `HotKey` doesn't work, but `Magnet` does.

* HotKey: https://github.com/soffes/HotKey
* Magnet: https://github.com/Clipy/Magnet

### What this for?
`HotKey` Github issue

### Goals
Figuring out why `HotKey` doens't work and fix it.     
I prefer use `HotKey` over `Magnet`, because `HotKey` have better syntax (easier)    
Here is comparison: 

`HotKey` snippet  
```swift
let hotKey = HotKey(key: .r, modifiers: [.command, .option])

hotKey.keyDownHandler = {
    print("Pressed at \(Date())")
}
```

`Magnet` snippet  
```swift
if let keyCombo = KeyCombo(keyCode: 11, carbonModifiers: 4352) {
    let hotKey = HotKey(identifier: "CommandControlB", keyCombo: keyCombo, target: self, action: #selector())
    hotKey.register() // or HotKeyCenter.shared.register(with: hotKey)
}

@objc func magnetKey(){
    print("Magnet Work! \(Date())")
}
```
no idea what is `keyCode: 11` and `carbonModifiers: 4352`     
what if I only want listen `Space` key? or `Ctrl + 3`? How do I do it?   
`identifier: "CommandControlB"` seen like only for `unregister`, not sure

### Code in `ViewController.swift`
![demo code](./README-images/demo.jpg)

### How to run?
```
git clone https://github.com/1c7/testHotKey.git
```
double click `testHotKey.xcodeproj`

### Time
2019-May-18

