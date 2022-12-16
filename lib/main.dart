import 'package:disenos/screens/Scroll_design.dart';
import 'package:disenos/screens/basic_design.dart';
import 'package:disenos/screens/complex_design.dart';
import 'package:disenos/screens/main_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Disenos',
      initialRoute: 'main_screen',
      routes: {
        'main_screen': (_) => const MainScreen(),
        'basic_design': (_) => const HomeScreen(),
        'scroll_design': (_) => const ScrollScreen(),
        'complex_design': (_) => const ComplexScreen(),
      },
    );
  }
}
