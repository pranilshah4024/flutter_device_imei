/*
Copyright (C) 2025 Pranil Shah - All Rights Reserved
You can read LICENCE.md file for the reference

Email : pranilshah4024@gmail.com
Linkedin : https://www.linkedin.com/in/ipranilshah/
Github : https://github.com/pranilshah4024
Medium : https://medium.com/@ipranilshah
Website : https://pranilshah.in/
*/
import 'flutter_device_imei_platform_interface.dart';

/// The main class for interacting with the flutter_device_imei plugin.
///
/// It uses a singleton pattern to ensure a single instance is used
/// throughout the app. Access the instance via [FlutterDeviceImei.instance].
class FlutterDeviceImei {
  /// A private constructor to prevent direct instantiation of the class.
  ///
  /// This is a key part of implementing the singleton pattern.
  FlutterDeviceImei._privateConstructor();

  /// The single, static instance of the [FlutterDeviceImei] class.
  static final FlutterDeviceImei instance =
      FlutterDeviceImei._privateConstructor();

  /// Returns the underlying platform's version string.
  ///
  /// This method calls the platform-specific implementation.
  /// For example, on Android, it might return the Android SDK version.
  Future<String?> getPlatformVersion() {
    return FlutterDeviceImeiPlatform.instance.getPlatformVersion();
  }

  /// Retrieves the device's IMEI (International Mobile Equipment Identity) number.
  ///
  /// Returns a [Future] that completes with the IMEI as a [String].
  Future<String?> getIMEI() {
    return FlutterDeviceImeiPlatform.instance.getIMEI();
  }
}
