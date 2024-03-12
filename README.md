# mmc_sbp

This plugin is designed to open your bank's application for SBP payments and provides access to bank applications installed on your device, including those banks that offer web interfaces

## Getting Started

## Adding dependencies

To use the plugin, add it to the pubspec.yaml file.

### IOS

Incorporate URL schemes into the LSApplicationQueriesSchemes within the Info.plist file:
This compilation is required to enable the opening of third-party applications on iOS.
Access the list of banks affiliated with SBP by visiting c2bmembers.json.

```
    Info.plist
    For ios
    <key>LSApplicationQueriesSchemes</key>
    <array>
    <string>bank100000000000</string>
    ...
    </array>
```

<b>Attention!</b> As of iOS 15, the scheme list is limited to a maximum of 50 items. 
For more details, refer to [this](https://developer.apple.com/documentation/uikit/uiapplication/1622952-canopenurl#discussion)