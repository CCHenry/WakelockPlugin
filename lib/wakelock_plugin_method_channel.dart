import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'wakelock_plugin_platform_interface.dart';

/// An implementation of [WakelockPluginPlatform] that uses method channels.
class MethodChannelWakelockPlugin extends WakelockPluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('wakelock_plugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<void> enable() async {
    await methodChannel.invokeMethod('enable');
  }

  @override
  Future<void> disable() async {
    await methodChannel.invokeMethod('disable');
  }

}
