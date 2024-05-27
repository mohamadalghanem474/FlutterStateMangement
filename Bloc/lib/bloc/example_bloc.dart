import 'package:flutter_bloc/flutter_bloc.dart';
import 'example_event.dart';
import 'example_state.dart';

class ExampleBloc extends Bloc<ExampleEvent, ExampleState> {
  int _counter = 0;

  ExampleBloc() : super(InitialState()) {
    on<IncrementEvent>(
      (event, emit) {
        _counter++;
        emit(UpdatedState(_counter));
      },
    );
  }
}
