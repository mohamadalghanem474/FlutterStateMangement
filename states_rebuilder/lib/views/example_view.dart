import 'package:flutter/material.dart';
import 'package:state_mangement/models/example_model.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import '../presenters/example_presenter.dart';

class ExampleView extends StatelessWidget {
  const ExampleView({super.key});

  @override
  Widget build(BuildContext context) {
    final reactiveModel = Injector.getAsReactive<ExampleModel>();

    return Scaffold(
      appBar: AppBar(title: const Text('States Rebuilder Example')),
      body: Center(
        child: StateBuilder(
          observe: () => RM.get<ExampleModel>(),
          builder: (context, reactiveModel) {
            final presenter = ExamplePresenter(reactiveModel!);

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Count: ${presenter.state.count}',
                  style: const TextStyle(fontSize: 24),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: presenter.increment,
                      child: const Text('Increment'),
                    ),
                    const SizedBox(width: 20),
                    ElevatedButton(
                      onPressed: presenter.decrement,
                      child: const Text('Decrement'),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
