import 'dart:io' show Platform;

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:package_info_plus/package_info_plus.dart';

Future<Map<String, dynamic>> getDeviceMeta() async {
  final deviceInfoPlugin = DeviceInfoPlugin();
  final packageInfo = await PackageInfo.fromPlatform();

  String platform = kIsWeb
      ? 'web'
      : Platform.isAndroid
      ? 'android'
      : Platform.isIOS
      ? 'ios'
      : Platform.isMacOS
      ? 'macos'
      : Platform.isWindows
      ? 'windows'
      : 'unknown';

  String deviceName = '';
  String osVersion = '';

  if (kIsWeb) {
    final webInfo = await deviceInfoPlugin.webBrowserInfo;
    deviceName = webInfo.vendor ?? 'unknown';
    osVersion = webInfo.userAgent ?? 'unknown';
  } else if (Platform.isAndroid) {
    final androidInfo = await deviceInfoPlugin.androidInfo;
    deviceName = '${androidInfo.manufacturer} ${androidInfo.model}';
    osVersion = 'Android ${androidInfo.version.release}';
  } else if (Platform.isIOS) {
    final iosInfo = await deviceInfoPlugin.iosInfo;
    deviceName = iosInfo.name;
    osVersion = '${iosInfo.systemName} ${iosInfo.systemVersion}';
  } else if (Platform.isLinux) {
    final linuxInfo = await deviceInfoPlugin.linuxInfo;
    deviceName = linuxInfo.name;
    osVersion = linuxInfo.version ?? 'unknown';
  } else {
    deviceName = 'unknown';
    osVersion = 'unknown';
  }

  final size = PlatformDispatcher.instance.views.first.physicalSize;
  final pixelRatio = PlatformDispatcher.instance.views.first.devicePixelRatio;
  final screenResolution =
      '${(size.width / pixelRatio).round()}x${(size.height / pixelRatio).round()}';

  return {
    "type": platform,
    "device-name": deviceName,
    "device-os-version": osVersion,
    "app-version": packageInfo.version,
    "screen_resolution": screenResolution,
    "language": PlatformDispatcher.instance.locale.toLanguageTag(),
    "user-agent": null,
  };
}
