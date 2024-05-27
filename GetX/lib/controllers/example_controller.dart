import 'package:get/get.dart';

class ExampleController extends GetxController {
  // Reactive state using Rx variables
  RxInt count = 0.obs;

  void increment() {
    count.value++;
  }

  void decrement() {
    count.value--;
  }
}
