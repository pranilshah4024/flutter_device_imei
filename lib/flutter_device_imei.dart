/*

Copyright (C) 2024 Pranil Shah - All Rights Reserved
You can read LICENCE.md file for the reference

Email : pranilshah4024@gmail.com
Linkedin : https://www.linkedin.com/in/pranilshah4024/
Github : https://github.com/pranilshah4024
Medium : https://medium.com/@pranilshah4024
Website : https://pranilshah.in/
*/
import 'flutter_device_imei_platform_interface.dart';

class FlutterDeviceImei {

  FlutterDeviceImei._privateConstructor();

  static final FlutterDeviceImei instance = FlutterDeviceImei._privateConstructor();
  Future<String?> getPlatformVersion() {
    return FlutterDeviceImeiPlatform.instance.getPlatformVersion();
  }

  Future<String?> getIMEI() {
    return FlutterDeviceImeiPlatform.instance.getIMEI();
  }
}
