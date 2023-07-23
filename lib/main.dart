import 'package:flutter/material.dart';
import 'package:zekrshomar/view/mainscreen.dart';

void main() {
  runApp(const CounterApp());
}

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(child: MainScreen()),
      ),
    );
  }
}
