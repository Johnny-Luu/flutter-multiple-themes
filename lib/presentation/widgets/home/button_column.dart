import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/domain/constants/counter_constant.dart';
import 'package:flutter_clean_architecture/domain/enums/counter_enum.dart';
import 'package:flutter_clean_architecture/presentation/bloc/counter/counter_bloc.dart';
import 'package:flutter_clean_architecture/presentation/bloc/counter/counter_event.dart';

class ColumnButton extends StatelessWidget {
  const ColumnButton({Key? key}) : super(key: key);

  void onIncrement(BuildContext context) => context.read<CounterBloc>().add(
        const CounterUpdate(
          value: CounterConstant.defaultValueChange,
          type: CounterEventType.increment,
        ),
      );

  void onDecrement(BuildContext context) => context.read<CounterBloc>().add(
        const CounterUpdate(
          value: CounterConstant.defaultValueChange,
          type: CounterEventType.decrement,
        ),
      );

  void onReset(BuildContext context) =>
      context.read<CounterBloc>().add(CounterReset());

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: () => onIncrement(context),
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
        FloatingActionButton(
          onPressed: () => onDecrement(context),
          tooltip: 'Decrement',
          child: const Icon(Icons.remove),
        ),
        FloatingActionButton(
          onPressed: () => onReset(context),
          tooltip: 'Reset',
          child: const Icon(Icons.restart_alt_sharp),
        ),
      ],
    );
  }
}
