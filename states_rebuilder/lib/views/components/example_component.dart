import 'package:flutter/material.dart';

class ExampleComponent extends StatelessWidget {
  final String label;
  final void Function() onPressed;

  const ExampleComponent({super.key, required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(label),
    );
  }
}
