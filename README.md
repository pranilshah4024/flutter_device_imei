# Flutter Device IMEI

[ ![Build version](https://img.shields.io/badge/pub-v0.0.1-green)](https://pub.dev/packages/flutter_device_imei)

Flutter plugin to get real and consistent IMEI for Mobile Device

## Getting Started

Get IMEI (International Mobile Device Identity) for Android devices less than android 10 with runtime permission for android greater than or equal to 10 returns a [Settings.Secure.ANDROID_ID](https://developer.android.com/reference/android/provider/Settings.Secure) and get unique identification on ios An consistent UUID string that uniquely identifies a device for the application provider.

**Use**
```dart
import 'package:flutter_device_imei/flutter_device_imei.dart';

String imei = await FlutterDeviceImei.instance.getIMEI();
```


### Author

This plugin is developed, **by Pranil Shah**


