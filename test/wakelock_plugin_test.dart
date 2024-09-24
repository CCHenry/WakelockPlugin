import 'package:flutter_test/flutter_test.dart';
import 'package:wakelock_plugin/wakelock_plugin.dart';
import 'package:wakelock_plugin/wakelock_plugin_platform_interface.dart';
import 'package:wakelock_plugin/wakelock_plugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockWakelockPluginPlatform
    with MockPlatformInterfaceMixin
    implements WakelockPluginPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');

  @override
  Future<void> disable() {
    // TODO: implement disable
    throw UnimplementedError();
  }

  @override
  Future<void> enable() {
    // TODO: implement enable
    throw UnimplementedError();
  }
}

void main() {
  final WakelockPluginPlatform initialPlatform =
      WakelockPluginPlatform.instance;

  test('$MethodChannelWakelockPlugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelWakelockPlugin>());
  });

  test('getPlatformVersion', () async {
    WakelockPlugin wakelockPlugin = WakelockPlugin();
    MockWakelockPluginPlatform fakePlatform = MockWakelockPluginPlatform();
    WakelockPluginPlatform.instance = fakePlatform;

    expect(await wakelockPlugin.getPlatformVersion(), '42');
  });
}
