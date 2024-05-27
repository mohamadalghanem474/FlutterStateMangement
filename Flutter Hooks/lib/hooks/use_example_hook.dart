import 'package:flutter_hooks/flutter_hooks.dart';

class ExampleHook {
  final int count;
  final void Function() increment;
  final void Function() decrement;

  ExampleHook({required this.count, required this.increment, required this.decrement});
}

ExampleHook useExampleHook() {
  final count = useState(0);

  void increment() {
    count.value++;
  }

  void decrement() {
    count.value--;
  }

  return ExampleHook(
    count: count.value,
    increment: increment,
    decrement: decrement,
  );
}
