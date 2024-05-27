import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/example_cubit.dart';
import 'components/example_display.dart';

class ExampleView extends StatelessWidget {
  const ExampleView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Example Cubit')),
      body: BlocBuilder<ExampleCubit, ExampleState>(
        builder: (context, state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ExampleDisplay(count: state.count),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FloatingActionButton(
                      onPressed: () =>
                          context.read<ExampleCubit>().decrement(),
                      tooltip: 'Decrement',
                      child: Icon(Icons.remove),
                    ),
                    SizedBox(width: 20),
                    FloatingActionButton(
                      onPressed: () =>
                          context.read<ExampleCubit>().increment(),
                      tooltip: 'Increment',
                      child: Icon(Icons.add),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
