import 'package:flutter/material.dart';
import 'package:projetoflutter/pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.light(primary: Colors.red.shade900),
        appBarTheme: AppBarTheme(
          color: Colors.red.shade900,
          titleTextStyle: TextStyle(
            color: Colors.red.shade50,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: const HomePage(),
    );
  }
}
