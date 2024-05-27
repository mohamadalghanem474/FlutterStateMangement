import 'package:flutter_bloc/flutter_bloc.dart';

// State
class ExampleState {
  final int count;

  ExampleState(this.count);
}

// Cubit
class ExampleCubit extends Cubit<ExampleState> {
  ExampleCubit() : super(ExampleState(0));

  void increment() => emit(ExampleState(state.count + 1));

  void decrement() => emit(ExampleState(state.count - 1));
}
