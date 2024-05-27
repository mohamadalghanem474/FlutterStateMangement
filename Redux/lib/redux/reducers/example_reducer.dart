import 'package:redux/redux.dart';
import '../actions/example_actions.dart';

final exampleReducer = combineReducers<int>([
  TypedReducer<int, IncrementAction>(_increment),
]);

int _increment(int state, IncrementAction action) {
  return state + 1;
}
