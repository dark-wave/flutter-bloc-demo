part of 'counter_bloc.dart';

@immutable
class CounterState {
  final int counter;

  CounterState({
    this.counter
  });

  CounterState initialState() => new CounterState(counter: 0);

  CounterState copyWith({
    int counter
  }) => CounterState(
    counter: counter ?? this.counter
  );
}
