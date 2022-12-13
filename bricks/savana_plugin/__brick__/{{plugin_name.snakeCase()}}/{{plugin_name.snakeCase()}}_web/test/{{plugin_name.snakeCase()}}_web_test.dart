import 'package:flutter_test/flutter_test.dart';
import 'package:{{plugin_name.snakeCase()}}_platform_interface/{{plugin_name.snakeCase()}}_platform_interface.dart';
import 'package:{{plugin_name.snakeCase()}}_web/{{plugin_name.snakeCase()}}_web.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('{{plugin_name.pascalCase()}}Web', () {
    const kPlatformName = 'Web';
    late {{plugin_name.pascalCase()}}Web {{plugin_name.camelCase()}};

    setUp(() async {
      {{plugin_name.camelCase()}} = {{plugin_name.pascalCase()}}Web();
    });

    test('can be registered', () {
      {{plugin_name.pascalCase()}}Web.registerWith();
      expect({{plugin_name.pascalCase()}}Platform.instance, isA<{{plugin_name.pascalCase()}}Web>());
    });

    test('getPlatformName returns correct name', () async {
      final name = await {{plugin_name.camelCase()}}.getPlatformName();
      expect(name, equals(kPlatformName));
    });
  });
}
