# {{appName}} 

Generated by the Savana Demo Brick

A default app that displays Savana Inc website
---

## Getting Started 🚀

This project contains 3 flavors:

- development
- staging
- production

To run the desired flavor either use the launch configuration in VSCode/Android Studio or use the following commands:

```sh
# Development
$ flutter run --flavor development --target lib/main_development.dart

# Staging
$ flutter run --flavor staging --target lib/main_staging.dart

# Production
$ flutter run --flavor production --target lib/main_production.dart
```

_\*{{appName}} works on iOS, Android._

---

## Running Tests 🧪

To run all unit and widget tests use the following command:

```sh
$ flutter test --coverage --test-randomize-ordering-seed random
```


## Working with Translations 🌐

This project relies on [flutter_localizations][flutter_localizations_link] and follows the [official internationalization guide for Flutter][internationalization_link].

### Adding Strings

1. To add a new localizable string, open the `app_en.arb` file at `lib/l10n/arb/app_en.arb`.

```arb
{
    "@@locale": "en",
    "savanaAppBarTitle": "Savana Inc Brick",
    "@savanaAppBarTitle": {
        "description": "Text shown in the AppBar of Savana Brick default Page"
    }
}
```

2. Then add a new key/value and description

```arb
{
    "@@locale": "en",
    "savanaAppBarTitle": "Savana Inc Brick",
    "@savanaAppBarTitle": {
        "description": "Texte affiché dans l'AppBar de la page par défaut de Savana Brick"
    },
    "hello": "Hello Savana",
    "@hello": {
        "description": "Hello Savana Text"
    }
}
```

3. Use the new string

```dart
import 'package:{{appName}}/l10n/l10n.dart';

@override
Widget build(BuildContext context) {
  final l10n = context.l10n;
  return Text(l10n.hello);
}
```

### Adding Supported Locales

Update the `CFBundleLocalizations` array in the `Info.plist` at `ios/Runner/Info.plist` to include the new locale.

```xml
    ...

    <key>CFBundleLocalizations</key>
	<array>
		<string>en</string>
		<string>fr</string>
	</array>

    ...
```

### Adding Translations

1. For each supported locale, add a new ARB file in `lib/l10n/arb`.

```
├── l10n
│   ├── arb
│   │   ├── app_en.arb
│   │   └── app_fr.arb
```

2. Add the translated strings to each `.arb` file:

`app_en.arb`

```arb
{
    "@@locale": "en",
    "savanaAppBarTitle": "Savana Inc Brick",
    "@savanaAppBarTitle": {
        "description": "Text shown in the AppBar of Savana Brick default Page"
    }
}
```

`app_fr.arb`

```arb
{
    "@@locale": "fr",
    "savanaAppBarTitle": "Brick de Savana Inc",
    "@savanaAppBarTitle": {
        "description": "Texte affiché dans l'AppBar de la page par défaut de Savana Brick"
    }
}
```


[flutter_localizations_link]: https://api.flutter.dev/flutter/flutter_localizations/flutter_localizations-library.html
[internationalization_link]: https://flutter.dev/docs/development/accessibility-and-localization/internationalization

