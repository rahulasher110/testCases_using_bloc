import 'package:bloc/bloc.dart';
import 'package:counter_app_in_bloc/counter_screen/cubit/counter_screen_state.dart';

class CounterScreenCubit extends Cubit<CounterScreenState> {
  CounterScreenCubit() : super(const CounterScreenState.initialState());

  void increment() {
    emit(CounterScreenState.incrementState(state.counterValue + 1));
  }

  void decrement() {
    emit(CounterScreenState.decrementState(state.counterValue - 1));
  }
}
