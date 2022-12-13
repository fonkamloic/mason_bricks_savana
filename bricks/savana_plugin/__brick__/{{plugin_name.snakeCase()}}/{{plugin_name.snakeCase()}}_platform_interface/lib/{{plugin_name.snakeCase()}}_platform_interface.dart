import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:{{plugin_name.snakeCase()}}_platform_interface/src/method_channel_{{plugin_name.snakeCase()}}.dart';

/// The interface that implementations of {{plugin_name.snakeCase()}} must implement.
///
/// Platform implementations should extend this class
/// rather than implement it as `{{plugin_name.pascalCase()}}`.
/// Extending this class (using `extends`) ensures that the subclass will get
/// the default implementation, while platform implementations that `implements`
///  this interface will be broken by newly added [{{plugin_name.pascalCase()}}Platform] methods.
abstract class {{plugin_name.pascalCase()}}Platform extends PlatformInterface {
  /// Constructs a {{plugin_name.pascalCase()}}Platform.
  {{plugin_name.pascalCase()}}Platform() : super(token: _token);

  static final Object _token = Object();

  static {{plugin_name.pascalCase()}}Platform _instance = MethodChannel{{plugin_name.pascalCase()}}();

  /// The default instance of [{{plugin_name.pascalCase()}}Platform] to use.
  ///
  /// Defaults to [MethodChannel{{plugin_name.pascalCase()}}].
  static {{plugin_name.pascalCase()}}Platform get instance => _instance;

  /// Platform-specific plugins should set this with their own platform-specific
  /// class that extends [{{plugin_name.pascalCase()}}Platform] when they register themselves.
  static set instance({{plugin_name.pascalCase()}}Platform instance) {
    PlatformInterface.verify(instance, _token);
    _instance = instance;
  }

  /// Return the current platform name.
  Future<String?> getPlatformName();
}
