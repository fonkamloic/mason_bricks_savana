import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:{{plugin_name.snakeCase()}}_macos/{{plugin_name.snakeCase()}}_macos.dart';
import 'package:{{plugin_name.snakeCase()}}_platform_interface/{{plugin_name.snakeCase()}}_platform_interface.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('{{plugin_name.pascalCase()}}MacOS', () {
    const kPlatformName = 'MacOS';
    late {{plugin_name.pascalCase()}}MacOS {{plugin_name.camelCase()}};
    late List<MethodCall> log;

    setUp(() async {
      {{plugin_name.camelCase()}} = {{plugin_name.pascalCase()}}MacOS();

      log = <MethodCall>[];
      TestDefaultBinaryMessengerBinding.instance!.defaultBinaryMessenger
          .setMockMethodCallHandler({{plugin_name.camelCase()}}.methodChannel, (methodCall) async {
        log.add(methodCall);
        switch (methodCall.method) {
          case 'getPlatformName':
            return kPlatformName;
          default:
            return null;
        }
      });
    });

    test('can be registered', () {
      {{plugin_name.pascalCase()}}MacOS.registerWith();
      expect({{plugin_name.pascalCase()}}Platform.instance, isA<{{plugin_name.pascalCase()}}MacOS>());
    });

    test('getPlatformName returns correct name', () async {
      final name = await {{plugin_name.camelCase()}}.getPlatformName();
      expect(
        log,
        <Matcher>[isMethodCall('getPlatformName', arguments: null)],
      );
      expect(name, equals(kPlatformName));
    });
  });
}
