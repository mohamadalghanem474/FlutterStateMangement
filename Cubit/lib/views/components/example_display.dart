import 'package:flutter/material.dart';

class ExampleDisplay extends StatelessWidget {
  final int count;

  const ExampleDisplay({super.key, required this.count});

  @override
  Widget build(BuildContext context) {
    return Text(
      '$count',
      style: const TextStyle(fontSize: 50),
    );
  }
}
