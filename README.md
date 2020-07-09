
<img src="https://github.com/jwd-ali/TidalTestProject/blob/master/images/header/header.png">
<img align="right" src="https://github.com/jwd-ali/Drag3DRotateCard/blob/master/images/ezgif.com-video-to-gif-17.gif"  height = "580"/>
<p><h1 align="left">Drag3DRotateCard</h1></p>

[![CI Status](https://travis-ci.org/jwd-ali/RingPieChart.svg)](https://travis-ci.org/jwd-ali/RingPieChart)
[![CocoaPods Version](https://img.shields.io/cocoapods/v/Drag3DRotateCard.svg?style=flat)](https://cocoapods.org/pods/Drag3DRotateCard)
[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-0473B3.svg?style=flat)](https://github.com/Carthage/Carthage)
[![License](https://img.shields.io/cocoapods/l/RingPieChart.svg?style=flat)](https://cocoapods.org/pods/Drag3DRotateCard)
[![Platform](https://img.shields.io/cocoapods/p/RingPieChart.svg?style=flat)](https://cocoapods.org/pods/Drag3DRotateCard)
[![Swift 5.1](https://img.shields.io/badge/swift-5.1-orange)](https://swift.org)

<p><h4>Drag to rotate card in 3D with finger to see its both sides</h4></p>

___

<p> 
  

<a href="https://www.linkedin.com/in/jawad-ali-3804ab24/"><img src="https://i.imgur.com/vGjsQPt.png" width="134" height="34"></a>  

</br></br>


## Requirements

- iOS 10.0+ / Mac OS X 10.9+ / watchOS 2.0+ / tvOS 9.0+
- Xcode 8.0+

## Installation

### [CocoaPods](http://cocoapods.org)

To integrate **Drag3DRotateCard** into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
use_frameworks!

pod 'Drag3DRotateCard'
```

Then, run the following command:

```bash
$ pod install
```

### Manually

If you prefer not to use a dependency manager, you can integrate Drag3DRotateCard into your project manually.

- Add sources into your project:
  - Drag `Rotate3DImageView.swift`
  
  ## Usage

> If you are using any dependency manager (pods , carthage , package manager)to integrate Drag3DRotateCard. Import Drag3DRotateCard first:
> ```swift
> import Drag3DRotateCard
> ```

> And for Manuall install you dont need to import anything 


You need to simply initiate imageView with two images like this
> ```swift
 private var cardImage: Rotate3DImageView! = {
        let imageView = Rotate3DImageView(frontImage: "frontCard", backImage: "backCard")
        return imageView
    }()
 > ```
 
 For better understanding framework inncludes example project as well
