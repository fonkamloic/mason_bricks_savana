import 'package:{{app_name.snakeCase()}}/app/app.dart';
import 'package:{{app_name.snakeCase()}}/zoned_guard.dart';

void main() {
  zonedGuard(() => const App());
}
