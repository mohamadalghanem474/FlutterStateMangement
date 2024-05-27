import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_mangement/core/bloc_observer.dart';
import 'bloc/example_bloc.dart';
import 'views/example_view.dart';

void main() {
  Bloc.observer = const AppBlocObserver();
  runApp(
    BlocProvider(
      create: (context) => ExampleBloc(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ExampleView(),
    );
  }
}
