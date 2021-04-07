import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(counter: 0));

  @override
  Stream<CounterState> mapEventToState(CounterEvent event) async* {
    if(event is OnCounterIncrement){
      yield state.copyWith(counter: state.counter + 1 );
    }else if(event is OnCounterDecrease){
      yield state.copyWith(counter: state.counter - 1);
    }else if(event is OnCounterRestart){
      yield state.initialState();
    }
  }
}
