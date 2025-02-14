# Flutter Device IMEI

[![Build version](https://img.shields.io/badge/pub-v0.0.3-blue)](https://pub.dev/packages/flutter_device_imei)

**Flutter Device IMEI** is a Flutter plugin designed to provide a reliable and consistent method for retrieving a device's unique identifier across Android and iOS platforms. This plugin helps developers access IMEI (International Mobile Equipment Identity) on Android devices and a consistent UUID string on iOS.

## Features

- Retrieves the IMEI for Android devices running versions below Android 10.
- For Android 10 and above, it returns a [Settings.Secure.ANDROID_ID](https://developer.android.com/reference/android/provider/Settings.Secure).
- Provides a consistent UUID identifier on iOS.
- Requires runtime permission for IMEI retrieval on Android devices below Android 10.

## Installation

Add the package to your `pubspec.yaml` file:

```yaml
dependencies:
  flutter_device_imei: latest_version
```

Run the following command to install:

```sh
flutter pub get
```

## Usage

Import the package and use it to retrieve the IMEI or device identifier:

```dart
import 'package:flutter_device_imei/flutter_device_imei.dart';

void getDeviceIMEI() async {
  String imei = await FlutterDeviceImei.instance.getIMEI();
  print("Device IMEI/Identifier: $imei");
}
```

## Permissions

For Android devices running below Android 10, add the following permission to your `AndroidManifest.xml` file:

```xml
<uses-permission android:name="android.permission.READ_PHONE_STATE"/>
```

For Android 10 and above, no additional permissions are required as the plugin fetches the `ANDROID_ID`.

## Compatibility

| Platform | Support |
|----------|---------|
| Android  | ✅ (IMEI for < Android 10, ANDROID_ID for ≥ Android 10) |
| iOS      | ✅ (Consistent UUID) |

## Support

If you find this package helpful, consider supporting my work:

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/W7W3R3UVR)  
[![BuyMeACoffee](https://img.shields.io/badge/Buy%20Me%20a%20Coffee-ffdd00?style=for-the-badge&logo=buy-me-a-coffee&logoColor=black)](https://buymeacoffee.com/pranilshah)

## Author

This plugin is developed and maintained by **[Pranil Shah](https://linktr.ee/pranilshah)**.

