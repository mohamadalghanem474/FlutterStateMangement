import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../presenters/example_presenter.dart';
import '../models/example_model.dart';

class ExampleView extends StatelessWidget {
  final ExamplePresenter _presenter = ExamplePresenter(ExampleModel());

  ExampleView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('MobX Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Observer(
              builder: (_) => Text(
                'Count: ${_presenter.getCount()}',
                style: const TextStyle(fontSize: 24),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () => _presenter.increment(),
                  child: const Text('Increment'),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () => _presenter.decrement(),
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
