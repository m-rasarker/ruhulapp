
import 'dart:io';

import 'package:device_info/device_info.dart';
import 'package:flutter/material.dart';

import '../Model/deviceInfo.dart';

MySnackBar(message,context)
{
  return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content:Text(message))
  );
}



Future<DeviceInfo> getDeviceInfo() async {
  final deviceInfoPlugin = DeviceInfoPlugin();

  if (Platform.isAndroid) {
    final info = await deviceInfoPlugin.androidInfo;
    return DeviceInfo(
      deviceId: info.id ?? '',
      model: info.model ?? '',
      manufacturer: info.manufacturer ?? '',
      osName: 'Android',
      osVersion: info.version.release ?? '',
    );

  } else if (Platform.isIOS) {
    final info = await deviceInfoPlugin.iosInfo;
    return DeviceInfo(
      deviceId: info.identifierForVendor ?? '',
      model: info.utsname.machine ?? '',
      manufacturer: 'Apple',
      osName: 'iOS',
      osVersion: info.systemVersion ?? '',
    );
  } else {
    throw UnsupportedError('Unsupported platform');
  }
}




void getDeviceInfoFunction() async {
  DeviceInfo device = await getDeviceInfo();
  print(device.deviceId);
  print(device.osName);
  print(device.osVersion);

}