
import 'wakelock_plugin_platform_interface.dart';

class WakelockPlugin {
  Future<String?> getPlatformVersion() {
    return WakelockPluginPlatform.instance.getPlatformVersion();
  }

  Future<void> enable() async {
    await WakelockPluginPlatform.instance.enable();
  }

  Future<void> disable() async {
    await WakelockPluginPlatform.instance.disable();
  }

}
