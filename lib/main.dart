import 'package:flutter/material.dart';
import 'package:letgo_clone/auth/login_page.dart';
import 'package:letgo_clone/detail/detail_page.dart';
import 'package:letgo_clone/home/home_page.dart';
import 'package:letgo_clone/splash/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DetailPage(),
    );
  }
}
