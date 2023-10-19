import 'package:counter_app_in_bloc/counter_screen/cubit/counter_screen_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/counter_screen_cubit.dart';
import '../widgets/counter_screen_widgets.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(),
      body: _bodyWidget(context),
    );
  }
}

Widget _bodyWidget(BuildContext context) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BlocBuilder<CounterScreenCubit, CounterScreenState>(
          builder: (context, state) {
            return Text(
              state.counterValue.toString(),
              style: const TextStyle(
                  color: Colors.blue,
                  fontSize: 40,
                  fontWeight: FontWeight.w500),
            );
          },
        ),
        const SizedBox(height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
              onPressed: () {
                context.read<CounterScreenCubit>().increment();
              },
              child: const Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: () {
                context.read<CounterScreenCubit>().decrement();
              },
              child: const Icon(Icons.remove),
            )
          ],
        )
      ],
    ),
  );
}
