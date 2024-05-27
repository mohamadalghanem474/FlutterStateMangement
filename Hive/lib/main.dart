import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'models/example_model.dart';
import 'views/example_view.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(ExampleModelAdapter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hive Example App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ExampleView(),
    );
  }
}
