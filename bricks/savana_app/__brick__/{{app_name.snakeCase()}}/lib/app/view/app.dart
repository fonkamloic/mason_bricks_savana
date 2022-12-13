import 'package:flutter/material.dart';
import 'package:{{app_name.snakeCase()}}/savana_website/savana.dart';
import 'package:{{app_name.snakeCase()}}/l10n/l10n.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color(0xFF5199a2)),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: const Color(0xFF5199a2),
        ),
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const SavanaWebPage(),
    );
  }
}
