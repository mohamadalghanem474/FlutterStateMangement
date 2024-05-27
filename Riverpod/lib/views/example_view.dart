// views/example_view.dart

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../riverpod/example_riverpod.dart';
import '../models/example_model.dart';

class ExampleView extends ConsumerWidget {
  const ExampleView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ExampleModel model = ref.read(exampleModelProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Count: ${model.count}',
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                model.increment();
              },
              child: const Text('Increment Count'),
            ),
          ],
        ),
      ),
    );
  }
}
