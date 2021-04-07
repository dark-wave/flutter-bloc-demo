import 'package:bloc_example/bloc/counter/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Bloc example'),
      ),
      body: BlocBuilder<CounterBloc, CounterState>(
        builder: (context, state) {
          return Center(
            child: Text('Has pulsado el botón: ${state.counter} veces')
          );
        },
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: Icon(Icons.add),
            elevation: 0,
            splashColor: Colors.transparent,
            onPressed: (){
              final counterBloc = BlocProvider.of<CounterBloc>(context);
              counterBloc.add(OnCounterIncrement());
            } 
          ),
          SizedBox(height: 10),
          FloatingActionButton(
            child: Icon(Icons.remove),
            elevation: 0,
            splashColor: Colors.transparent,
            backgroundColor: Colors.red,
            onPressed: (){
              final counterBloc = BlocProvider.of<CounterBloc>(context);
              counterBloc.add(OnCounterDecrease());
            }
          ),
          SizedBox(height: 10),
          FloatingActionButton(
            child: Icon(Icons.refresh),
            elevation: 0,
            splashColor: Colors.transparent,
            backgroundColor: Colors.black45,
            onPressed: (){
              final counterBloc = BlocProvider.of<CounterBloc>(context);
              counterBloc.add(OnCounterRestart());
            }
          ),
        ],
      ),
    );
  }
}