import 'package:flutter/material.dart';

import 'Pages/login_page.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({super.key});
  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LogInPage(),
    );
  }
}
