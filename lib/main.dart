import 'package:bloc_example/bloc/counter/counter_bloc.dart';
import 'package:bloc_example/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => CounterBloc()),
      ],
      child: MaterialApp(
        title: 'Bloc example',
        debugShowCheckedModeBanner: false,
        initialRoute: 'homePage',
        routes: {
          'homePage': (_) => HomePage(),
        },
      ),
    );
  }
}