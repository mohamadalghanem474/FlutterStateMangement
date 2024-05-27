import 'package:redux/redux.dart';
import '../reducers/example_reducer.dart';

Store<int> createStore() {
  return Store<int>(
    exampleReducer,
    initialState: 0,
  );
}
