import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:{{plugin_name.snakeCase()}}/{{plugin_name.snakeCase()}}.dart';
import 'package:{{plugin_name.snakeCase()}}_platform_interface/{{plugin_name.snakeCase()}}_platform_interface.dart';

class Mock{{plugin_name.pascalCase()}}Platform extends Mock
    with MockPlatformInterfaceMixin
    implements {{plugin_name.pascalCase()}}Platform {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('{{plugin_name.pascalCase()}}', () {
    late {{plugin_name.pascalCase()}}Platform {{plugin_name.camelCase()}}Platform;

    setUp(() {
      {{plugin_name.camelCase()}}Platform = Mock{{plugin_name.pascalCase()}}Platform();
      {{plugin_name.pascalCase()}}Platform.instance = {{plugin_name.camelCase()}}Platform;
    });

    group('getPlatformName', () {
      test('returns correct name when platform implementation exists',
          () async {
        const platformName = '__test_platform__';
        when(
          () => {{plugin_name.camelCase()}}Platform.getPlatformName(),
        ).thenAnswer((_) async => platformName);

        final actualPlatformName = await getPlatformName();
        expect(actualPlatformName, equals(platformName));
      });

      test('throws exception when platform implementation is missing',
          () async {
        when(
          () => {{plugin_name.camelCase()}}Platform.getPlatformName(),
        ).thenAnswer((_) async => null);

        expect(getPlatformName, throwsException);
      });
    });
  });
}
