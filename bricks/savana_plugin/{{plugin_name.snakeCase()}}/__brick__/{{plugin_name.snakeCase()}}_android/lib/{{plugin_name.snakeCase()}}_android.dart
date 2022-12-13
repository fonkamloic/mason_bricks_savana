import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:{{plugin_name.snakeCase()}}_platform_interface/{{plugin_name.snakeCase()}}_platform_interface.dart';

/// The Android implementation of [{{plugin_name.pascalCase()}}Platform].
class {{plugin_name.pascalCase()}}Android extends {{plugin_name.pascalCase()}}Platform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('{{plugin_name.snakeCase()}}_android');

  /// Registers this class as the default instance of [{{plugin_name.pascalCase()}}Platform]
  static void registerWith() {
    {{plugin_name.pascalCase()}}Platform.instance = {{plugin_name.pascalCase()}}Android();
  }

  @override
  Future<String?> getPlatformName() {
    return methodChannel.invokeMethod<String>('getPlatformName');
  }
}
