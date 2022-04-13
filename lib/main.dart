import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      title: 'Example',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      home: PickerDemo(),
    );
  }
}
