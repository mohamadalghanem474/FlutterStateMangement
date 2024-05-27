abstract class ExampleState {}

class InitialState extends ExampleState {}

class UpdatedState extends ExampleState {
  final int counter;

  UpdatedState(this.counter);
}
