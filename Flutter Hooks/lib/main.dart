import 'package:flutter/material.dart';
import 'views/example_hook_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Hooks Example App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ExampleHookView(),
    );
  }
}
