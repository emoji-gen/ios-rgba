# iOS-RGBA &nbsp;[![CI Status](http://img.shields.io/travis/pine/RGBA.svg?style=flat)](https://travis-ci.org/pine/RGBA) [![Version](https://img.shields.io/cocoapods/v/RGBA.svg?style=flat)](http://cocoapods.org/pods/RGBA) [![License](https://img.shields.io/cocoapods/l/RGBA.svg?style=flat)](http://cocoapods.org/pods/RGBA) [![Platform](https://img.shields.io/cocoapods/p/RGBA.svg?style=flat)](http://cocoapods.org/pods/RGBA)

:art: RGBA color string utilities for iOS

![](palette.jpg)

## Getting Started

RGBA is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'RGBA'
```

### Objective-C

```obj-c
@import RGBA;

// UIColor to RGBA
UIColor *color = [UIColor colorWithRed:1 green:0 blue:0 alpha:1];
NSString *string = [RGBAUtils fromUIColor:color];

// RGBA to UIColor
UIColor *color = [RGBAUtils toUIColor:@"#FF0000FF"];
```

### Swift

```swift
import RGBA

// UIColor to RGBA
let color = UIColor(red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0)
let string = RGBAUtils.fromUIColor(color)

// RGBA to UIColor
let color = RGBAUtils.toUIColor("#FF0000FF")
```

## License

MIT &copy; Emoji Generator
