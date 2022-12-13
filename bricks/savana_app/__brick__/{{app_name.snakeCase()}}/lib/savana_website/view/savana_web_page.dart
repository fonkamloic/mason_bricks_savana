import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:{{app_name.snakeCase()}}/l10n/l10n.dart';


class SavanaWebPage extends StatefulWidget {
 const SavanaWebPage({Key? key}) : super(key: key);

  @override
  State<SavanaWebPage> createState() => _SavanaWebPageState();
}

class _SavanaWebPageState extends State<SavanaWebPage> {
  @override
  void initState() {
    super.initState();
    // Enable virtual display.
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
      final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(title: Text(l10n.savanaAppBarTitle)),
      body: const WebView(
        initialUrl: 'https://www.savanainc.com/',
      ),
    );
  }
}
