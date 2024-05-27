import 'package:hive/hive.dart';
import '../models/example_model.dart';

class ExamplePresenter {
  late Box<ExampleModel> _box;

  ExamplePresenter() {
    _init();
  }

  Future<void> _init() async {
    _box = await Hive.openBox<ExampleModel>('exampleBox');
    if (_box.isEmpty) {
      _box.add(ExampleModel(count: 0));
    }
  }

  ExampleModel get model => _box.getAt(0)!;

  void increment() {
    model.increment();
  }

  void decrement() {
    model.decrement();
  }

  // Dispose method for cleanup if necessary
  void dispose() {
    _box.close();
  }
}
