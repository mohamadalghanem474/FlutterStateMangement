import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../presenters/example_presenter.dart';
import '../models/example_model.dart';

class ExampleView extends StatefulWidget {
  const ExampleView({super.key});

  @override
  ExampleViewState createState() => ExampleViewState();
}

class ExampleViewState extends State<ExampleView> {
  late ExamplePresenter _presenter;

  @override
  void initState() {
    super.initState();
    _presenter = ExamplePresenter();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hive Example')),
      body: FutureBuilder(
        future: Hive.openBox<ExampleModel>('exampleBox'),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            final box = Hive.box<ExampleModel>('exampleBox');
            return ValueListenableBuilder(
              valueListenable: box.listenable(),
              builder: (context, Box<ExampleModel> box, widget) {
                final model = box.getAt(0)!;
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Count: ${model.count}',
                        style: const TextStyle(fontSize: 24),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          ElevatedButton(
                            onPressed: _presenter.increment,
                            child: const Text('Increment'),
                          ),
                          const SizedBox(width: 20),
                          ElevatedButton(
                            onPressed: _presenter.decrement,
                            child: const Text('Decrement'),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }

  @override
  void dispose() {
    _presenter.dispose();
    super.dispose();
  }
}
