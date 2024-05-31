import 'package:flutter/material.dart';
import 'package:mini_projects/src/components/themes/light_mode.dart';
import 'package:mini_projects/src/features/screens/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      theme: lightMode,
    );
  }
}
