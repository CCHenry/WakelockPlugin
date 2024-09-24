import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'wakelock_plugin_method_channel.dart';

abstract class WakelockPluginPlatform extends PlatformInterface {
  /// Constructs a WakelockPluginPlatform.
  WakelockPluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static WakelockPluginPlatform _instance = MethodChannelWakelockPlugin();

  /// The default instance of [WakelockPluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelWakelockPlugin].
  static WakelockPluginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [WakelockPluginPlatform] when
  /// they register themselves.
  static set instance(WakelockPluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<void> enable() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<void> disable() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
