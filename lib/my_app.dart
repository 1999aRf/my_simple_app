import 'package:flutter/material.dart';
import 'my_home_page.dart'; // Подключаем MyHomePage

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'My first app for learning Flutter!!!'),
    );
  }
}