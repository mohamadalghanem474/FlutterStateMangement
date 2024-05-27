import 'package:mobx/mobx.dart';

part 'example_model.g.dart';

class ExampleModel = _ExampleModel with _$ExampleModel;

abstract class _ExampleModel with Store {
  @observable
  int count = 0;

  @action
  void increment() {
    count++;
  }

  @action
  void decrement() {
    count--;
  }
}
