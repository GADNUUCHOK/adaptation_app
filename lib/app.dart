import 'package:flutter/material.dart';

import 'pages/personal_list_page.dart';
import 'theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themeLight,
      home: const PersonsPage(),
    );
  }
}
