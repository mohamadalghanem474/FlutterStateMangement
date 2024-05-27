import 'package:states_rebuilder/states_rebuilder.dart';
import '../models/example_model.dart';

class ExamplePresenter {
  final ReactiveModel<ExampleModel> _model;

  ExamplePresenter(ReactiveModel<ExampleModel> model)
      : _model = model;

  ExampleModel get state => _model.state;

  void increment() {
    _model.setState((model) => model.copyWith(count: model.count + 1));
  }

  void decrement() {
    _model.setState((model) => model.copyWith(count: model.count - 1));
  }
}
