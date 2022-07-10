import 'package:equatable/equatable.dart';
import 'package:flutter_clean_architecture/domain/enums/counter_enum.dart';

abstract class CounterEvent extends Equatable {
  const CounterEvent();

  @override
  List<Object> get props => [];
}

class CounterUpdate extends CounterEvent {
  final int value;
  final CounterEventType type;
  const CounterUpdate({required this.value, required this.type});
}

class CounterReset extends CounterEvent {}
