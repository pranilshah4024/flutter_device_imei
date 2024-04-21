package com.pranilshah.flutter_device_imei

import android.annotation.SuppressLint
import android.content.ContentResolver
import android.provider.Settings
import androidx.annotation.NonNull

import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
/*

Copyright (C) 2024 Pranil Shah - All Rights Reserved
You can read LICENCE.md file for the reference

Email : pranilshah4024@gmail.com
Linkedin : https://www.linkedin.com/in/pranilshah4024/
Github : https://github.com/pranilshah4024
Medium : https://medium.com/@pranilshah4024
Website : https://pranilshah.in/
*/
/** FlutterDeviceImeiPlugin */
class FlutterDeviceImeiPlugin: FlutterPlugin, MethodCallHandler {
  /// The MethodChannel that will the communication between Flutter and native Android
  ///
  /// This local reference serves to register the plugin with the Flutter Engine and unregister it
  /// when the Flutter Engine is detached from the Activity
  private lateinit var channel : MethodChannel
  private lateinit var contentResolver: ContentResolver

  override fun onAttachedToEngine(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    contentResolver = flutterPluginBinding.applicationContext.contentResolver
    channel = MethodChannel(flutterPluginBinding.binaryMessenger, "@pranilshah4024/flutter_device_imei")
    channel.setMethodCallHandler(this)
  }

  override fun onMethodCall(call: MethodCall, result: Result) {
    when (call.method) {
      "getPlatformVersion" -> {
        try {
          result.success(getPlatformVersion())
        }catch (e: Exception){
          result.error("ERROR_PLATFORM_VERSION",e.message,e)
        }
      }
      "get_imei" -> {
        try {
          result.success(getAndroidId())
        }catch (e: Exception){
          result.error("ERROR_GET_IMEI",e.message,e)
        }
      }
      else -> { // Note the block
        result.notImplemented()
      }
    }
  }

  override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
    channel.setMethodCallHandler(null)
  }


  private fun getPlatformVersion(): String? {
    return android.os.Build.VERSION.RELEASE
  }


  // Fetch the Android ID while suppressing lint warning about hardware IDs
  @SuppressLint("HardwareIds")
  private fun getAndroidId(): String? {
    return Settings.Secure.getString(contentResolver, Settings.Secure.ANDROID_ID)
  }
}
