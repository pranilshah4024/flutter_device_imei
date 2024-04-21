/*

Copyright (C) 2024 Pranil Shah - All Rights Reserved
You can read LICENCE.md file for the reference

Email : pranilshah4024@gmail.com
Linkedin : https://www.linkedin.com/in/pranilshah4024/
Github : https://github.com/pranilshah4024
Medium : https://medium.com/@pranilshah4024
Website : https://pranilshah.in/
*/

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_device_imei_platform_interface.dart';

/// An implementation of [FlutterDeviceImeiPlatform] that uses method channels.
class MethodChannelFlutterDeviceImei extends FlutterDeviceImeiPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('@pranilshah4024/flutter_device_imei');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<String?> getIMEI() async {
    final version = await methodChannel.invokeMethod<String>('get_imei');
    return version;
  }
}
