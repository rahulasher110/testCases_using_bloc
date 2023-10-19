import 'package:bloc_test/bloc_test.dart';
import 'package:counter_app_in_bloc/counter_screen/cubit/counter_screen_cubit.dart';
import 'package:counter_app_in_bloc/counter_screen/cubit/counter_screen_state.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CounterScreenCubit', () {
    test(
        'increment event',
        () => () {
              blocTest<CounterScreenCubit, CounterScreenState>(
                'CounterBloc emits [1] when increment is added',
                build: () => CounterScreenCubit(),
                act: (cubit) => cubit.increment(),
                expect: () => [10],
              );
            });

    test(
        'decrement event',
        () => () {
              blocTest<CounterScreenCubit, CounterScreenState>(
                'CounterBloc emits [1] when increment is added',
                build: () => CounterScreenCubit(),
                act: (cubit) => cubit.decrement(),
                expect: () => [10],
              );
            });
  });
}
