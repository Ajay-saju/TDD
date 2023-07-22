import 'package:equatable/equatable.dart';

class NumberTrivia extends Equatable {
  final String name;
  final int number;

  const NumberTrivia({required this.name, required this.number});

  @override
  List<Object?> get props => [name, number];
}
