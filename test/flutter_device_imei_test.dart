/*

Copyright (C) 2024 Pranil Shah - All Rights Reserved
You can read LICENCE.md file for the reference

Email : pranilshah4024@gmail.com
Linkedin : https://www.linkedin.com/in/pranilshah4024/
Github : https://github.com/pranilshah4024
Medium : https://medium.com/@pranilshah4024
Website : https://pranilshah.in/
*/
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_device_imei/flutter_device_imei.dart';
import 'package:flutter_device_imei/flutter_device_imei_platform_interface.dart';
import 'package:flutter_device_imei/flutter_device_imei_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterDeviceImeiPlatform
    with MockPlatformInterfaceMixin
    implements FlutterDeviceImeiPlatform {

  @override
  Future<String?> getPlatformVersion() {
    throw UnimplementedError();
  }

  @override
  Future<String?> getIMEI() {
    // TODO: implement getIMEI
    throw UnimplementedError();
  }
}

void main() {
  final FlutterDeviceImeiPlatform initialPlatform = FlutterDeviceImeiPlatform.instance;

  test('$MethodChannelFlutterDeviceImei is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterDeviceImei>());
  });

  test('getPlatformVersion', () async {


    expect(await FlutterDeviceImei.instance.getPlatformVersion(), '42');
  });
}
