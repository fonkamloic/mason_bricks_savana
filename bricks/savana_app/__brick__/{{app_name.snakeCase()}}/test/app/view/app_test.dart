import 'package:flutter_test/flutter_test.dart';
import 'package:{{app_name.snakeCase()}}/app/app.dart';
import 'package:{{app_name.snakeCase()}}/savana_website/savana.dart';

void main() {
  group('App', () {
    testWidgets('renders SanavaApp', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(SavanaWebPage), findsOneWidget);
    });
  });
}
