/*
Copyright (C) 2025 Pranil Shah - All Rights Reserved
You can read LICENCE.md file for the reference

Email : pranilshah4024@gmail.com
Linkedin : https://www.linkedin.com/in/ipranilshah/
Github : https://github.com/pranilshah4024
Medium : https://medium.com/@ipranilshah
Website : https://pranilshah.in/
*/

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_device_imei/constants/route_constants.dart';

import 'flutter_device_imei_platform_interface.dart';

/// An implementation of [FlutterDeviceImeiPlatform] that uses method channels.
class MethodChannelFlutterDeviceImei extends FlutterDeviceImeiPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final MethodChannel methodChannel =
      const MethodChannel(RouteConstants.methodChannel);

  @override
  Future<String?> getPlatformVersion() async {
    final String? version =
        await methodChannel.invokeMethod<String>(RouteConstants.getPlatformVersion);
    return version;
  }

  @override
  Future<String?> getIMEI() async {
    final String? version = await methodChannel.invokeMethod<String>(RouteConstants.getIMEI);
    return version;
  }
}
