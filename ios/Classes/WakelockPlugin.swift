import Flutter
import UIKit

public class WakelockPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "wakelock_plugin", binaryMessenger: registrar.messenger())
    let instance = WakelockPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "getPlatformVersion":
      result("iOS " + UIDevice.current.systemVersion)
    case "enable":
        UIApplication.shared.isIdleTimerDisabled = true
    case "disable":
        UIApplication.shared.isIdleTimerDisabled = false
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
