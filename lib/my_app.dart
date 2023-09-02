import 'package:first_flutter_app/pages/home_page.dart';
import 'package:first_flutter_app/pages/login_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.amber),
      home: const LoginPage(),
    );
  }
}
