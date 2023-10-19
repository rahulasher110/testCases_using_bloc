import 'package:counter_app_in_bloc/counter_screen/cubit/counter_screen_cubit.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_screen_view.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterScreenCubit(),
      child: const CounterView(),
    );
  }
}
