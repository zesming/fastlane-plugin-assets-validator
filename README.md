# assets_validator plugin

[![fastlane Plugin Badge](https://rawcdn.githack.com/fastlane/fastlane/master/fastlane/assets/plugin-badge.svg)](https://rubygems.org/gems/fastlane-plugin-assets_validator)

## Getting Started

This project is a [fastlane](https://github.com/fastlane/fastlane) plugin. To get started with `fastlane-plugin-assets_validator`, add it to your project by running:

```bash
fastlane add_plugin assets_validator
```

## About assets_validator

iOS project assets validator.

In our project, there would be some invalid assets. Just like a `JPEG` file using `.png`. It could cause some xcode build tools crash or error when we build (archive) our project. 

According to [Apple developer documentation](https://developer.apple.com/library/content/documentation/2DDrawing/Conceptual/DrawingPrintingiOS/LoadingImages/LoadingImages.html#//apple_ref/doc/uid/TP40010156-CH17-SW7), this plugin will do some check, and find out the invalid files.

It also supports modularization project (using CocoaPods), with `YourComponent.podspec`.

## Issues and Feedback

For any other issues and feedback about this plugin, please submit it to this repository.

## Troubleshooting

If you have trouble using plugins, check out the [Plugins Troubleshooting](https://docs.fastlane.tools/plugins/plugins-troubleshooting/) guide.

## Using `fastlane` Plugins

For more information about how the `fastlane` plugin system works, check out the [Plugins documentation](https://docs.fastlane.tools/plugins/create-plugin/).

## About `fastlane`

`fastlane` is the easiest way to automate beta deployments and releases for your iOS and Android apps. To learn more, check out [fastlane.tools](https://fastlane.tools).
