import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/domain/enums/counter_enum.dart';
import 'package:flutter_clean_architecture/presentation/bloc/counter/counter_event.dart';
import 'package:flutter_clean_architecture/presentation/bloc/counter/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState(value: 0)) {
    on<CounterUpdate>(onCounterUpdate);
    on<CounterReset>(onCounterReset);
  }

  void onCounterUpdate(
    CounterUpdate event,
    Emitter<CounterState> emitter,
  ) {
    switch (event.type) {
      case CounterEventType.increment:
        emitter(CounterState(value: state.value + event.value));
        break;
      case CounterEventType.decrement:
        emitter(CounterState(value: state.value - event.value));
        break;
      default:
        break;
    }
  }

  void onCounterReset(_, Emitter<CounterState> emitter) {
    emitter(const CounterState(value: 0));
  }
}
