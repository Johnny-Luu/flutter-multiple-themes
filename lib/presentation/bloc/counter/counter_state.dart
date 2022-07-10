import 'package:equatable/equatable.dart';

class CounterState extends Equatable {
  final int value;
  const CounterState({required this.value});

  @override
  List<Object> get props => [value];
}
