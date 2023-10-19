import 'package:equatable/equatable.dart';

class CounterScreenState extends Equatable {
  const CounterScreenState._({required this.counterValue});

  const CounterScreenState.initialState() : this._(counterValue: 0);

  const CounterScreenState.incrementState(value) : this._(counterValue: value);

  const CounterScreenState.decrementState(value) : this._(counterValue: value);

  final int counterValue;

  @override
  List<Object?> get props => [counterValue];
}
