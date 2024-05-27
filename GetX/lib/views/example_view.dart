import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_mangement/controllers/example_controller.dart';

class ExampleView extends StatelessWidget {
  final ExampleController _controller = Get.put(ExampleController());

   ExampleView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('GetX Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Obx(() => Text(
              'Count: ${_controller.count}',
              style: const TextStyle(fontSize: 24),
            )),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: _controller.increment,
                  child: const Text('Increment'),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: _controller.decrement,
                  child: const Text('Decrement'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
