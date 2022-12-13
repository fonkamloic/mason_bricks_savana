import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:{{plugin_name.snakeCase()}}_ios/{{plugin_name.snakeCase()}}_ios.dart';
import 'package:{{plugin_name.snakeCase()}}_platform_interface/{{plugin_name.snakeCase()}}_platform_interface.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('{{plugin_name.pascalCase()}}IOS', () {
    const kPlatformName = 'iOS';
    late {{plugin_name.pascalCase()}}IOS {{plugin_name.camelCase()}};
    late List<MethodCall> log;

    setUp(() async {
      {{plugin_name.camelCase()}} = {{plugin_name.pascalCase()}}IOS();

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
      {{plugin_name.pascalCase()}}IOS.registerWith();
      expect({{plugin_name.pascalCase()}}Platform.instance, isA<{{plugin_name.pascalCase()}}IOS>());
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
