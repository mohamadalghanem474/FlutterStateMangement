import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'views/example_view.dart';
import 'models/example_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Injector(
      inject: [Inject(() => ExampleModel(count: 0))],
      builder: (context) {
        return MaterialApp(
          title: 'States Rebuilder Example App',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: StateBuilder(
            observe: () => RM.get<ExampleModel>(),
            builder: (context, reactiveModel) {
              return const ExampleView();
            },
          ),
        );
      },
    );
  }
}
