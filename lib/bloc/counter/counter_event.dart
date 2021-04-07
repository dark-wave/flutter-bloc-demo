part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {}

class OnCounterIncrement extends CounterEvent{}

class OnCounterDecrease extends CounterEvent{}

class OnCounterRestart extends CounterEvent{}
