import 'package:disenos/screens/Scroll_design.dart';
import 'package:disenos/screens/basic_design.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      children: const [HomeScreen(), ScrollScreen()],
    ));
  }
}
