import 'package:{{plugin_name.snakeCase()}}_platform_interface/{{plugin_name.snakeCase()}}_platform_interface.dart';

/// The Web implementation of [{{plugin_name.pascalCase()}}Platform].
class {{plugin_name.pascalCase()}}Web extends {{plugin_name.pascalCase()}}Platform {
  /// Registers this class as the default instance of [{{plugin_name.pascalCase()}}Platform]
  static void registerWith([Object? registrar]) {
    {{plugin_name.pascalCase()}}Platform.instance = {{plugin_name.pascalCase()}}Web();
  }

  @override
  Future<String?> getPlatformName() async => 'Web';
}
