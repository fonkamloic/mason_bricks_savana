import FlutterMacOS
import Foundation

public class {{plugin_name.pascalCase()}}Plugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(
      name: "{{plugin_name.snakeCase()}}_macos",
      binaryMessenger: registrar.messenger)
    let instance = {{plugin_name.pascalCase()}}Plugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "getPlatformName":
      result("MacOS")    
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
