/*
Copyright (C) 2025 Pranil Shah - All Rights Reserved
You can read LICENCE.md file for the reference

Email : pranilshah4024@gmail.com
Linkedin : https://www.linkedin.com/in/ipranilshah/
Github : https://github.com/pranilshah4024
Medium : https://medium.com/@ipranilshah
Website : https://pranilshah.in/
*/
import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'flutter_device_imei_method_channel.dart';

abstract class FlutterDeviceImeiPlatform extends PlatformInterface {
  /// Constructs a FlutterDeviceImeiPlatform.
  FlutterDeviceImeiPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterDeviceImeiPlatform _instance = MethodChannelFlutterDeviceImei();

  /// The default instance of [FlutterDeviceImeiPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterDeviceImei].
  static FlutterDeviceImeiPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterDeviceImeiPlatform] when
  /// they register themselves.
  static set instance(FlutterDeviceImeiPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<String?> getIMEI() {
    throw UnimplementedError('imei number has not been implemented.');
  }
}
