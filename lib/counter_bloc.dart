import 'package:bloc/bloc.dart';

import 'counter_event.dart';
import 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  void onIncrement() {
    dispatch(IncrementEvent());
  }

  void onDecrement() {
    dispatch(DecrementEvent());
  }

  @override
  // TODO: implement initialState
  CounterState get initialState => CounterState.initial();

  @override
  Stream<CounterState> mapEventToState(CounterEvent event) async* {
    // TODO: implement mapEventToState
    //return null;
    if (event is IncrementEvent) {
      yield currentState..counter += 1;
    } else {
      yield currentState..counter -= 1;
    }
  }
}
