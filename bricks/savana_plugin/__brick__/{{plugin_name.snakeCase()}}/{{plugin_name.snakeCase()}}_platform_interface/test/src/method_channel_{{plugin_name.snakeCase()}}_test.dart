import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:{{plugin_name.snakeCase()}}_platform_interface/src/method_channel_{{plugin_name.snakeCase()}}.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  const kPlatformName = 'platformName';

  group('$MethodChannel{{plugin_name.pascalCase()}}', () {
    late MethodChannel{{plugin_name.pascalCase()}} methodChannel{{plugin_name.pascalCase()}};
    final log = <MethodCall>[];

    setUp(() async {
      methodChannel{{plugin_name.pascalCase()}} = MethodChannel{{plugin_name.pascalCase()}}()
        ..methodChannel.setMockMethodCallHandler((MethodCall methodCall) async {
          log.add(methodCall);
          switch (methodCall.method) {
            case 'getPlatformName':
              return kPlatformName;
            default:
              return null;
          }
        });
    });

    tearDown(log.clear);

    test('getPlatformName', () async {
      final platformName = await methodChannel{{plugin_name.pascalCase()}}.getPlatformName();
      expect(
        log,
        <Matcher>[isMethodCall('getPlatformName', arguments: null)],
      );
      expect(platformName, equals(kPlatformName));
    });
  });
}
