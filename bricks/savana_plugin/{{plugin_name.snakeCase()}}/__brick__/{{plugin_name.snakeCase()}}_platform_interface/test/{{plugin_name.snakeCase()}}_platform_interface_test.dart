import 'package:flutter_test/flutter_test.dart';
import 'package:{{plugin_name.snakeCase()}}_platform_interface/{{plugin_name.snakeCase()}}_platform_interface.dart';

class {{plugin_name.pascalCase()}}Mock extends {{plugin_name.pascalCase()}}Platform {
  static const mockPlatformName = 'Mock';

  @override
  Future<String?> getPlatformName() async => mockPlatformName;
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  group('{{plugin_name.pascalCase()}}PlatformInterface', () {
    late {{plugin_name.pascalCase()}}Platform {{plugin_name.camelCase()}}Platform;

    setUp(() {
      {{plugin_name.camelCase()}}Platform = {{plugin_name.pascalCase()}}Mock();
      {{plugin_name.pascalCase()}}Platform.instance = {{plugin_name.camelCase()}}Platform;
    });

    group('getPlatformName', () {
      test('returns correct name', () async {
        expect(
          await {{plugin_name.pascalCase()}}Platform.instance.getPlatformName(),
          equals({{plugin_name.pascalCase()}}Mock.mockPlatformName),
        );
      });
    });
  });
}
