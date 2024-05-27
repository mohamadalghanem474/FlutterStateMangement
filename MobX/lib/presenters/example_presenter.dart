import '../models/example_model.dart';

class ExamplePresenter {
  final ExampleModel _model;

  ExamplePresenter(this._model);

  void increment() {
    _model.increment();
  }

  void decrement() {
    _model.decrement();
  }

  int getCount() {
    return _model.count;
  }

  // Dispose method for cleanup if necessary
  void dispose() {}
}
