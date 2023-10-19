import 'package:counter_app_in_bloc/counter_screen/cubit/counter_screen_state.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CounterScreenState', () {
    CounterScreenState counterScreenCubit =
        const CounterScreenState.initialState();

    test(
        'our initial counter state is 0',
        () =>
            {expect(const CounterScreenState.initialState().counterValue, 0)});
    test('our initial counter state is of int type',
        () => {expect(counterScreenCubit.counterValue.runtimeType, int)});
  });
}
