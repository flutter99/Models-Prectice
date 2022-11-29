import 'package:flutter/material.dart';
import 'package:model_prectice_app/main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  bool darkTheme = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: darkTheme == true ? ThemeMode.dark : ThemeMode.light,
      title: 'Models Prectice',
      theme: darkTheme == true ? ThemeData(
        primarySwatch: Colors.orange,
        scaffoldBackgroundColor: Colors.black87,
      ) : ThemeData(
        primarySwatch: Colors.red,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const MainPage(),
    );
  }
}
