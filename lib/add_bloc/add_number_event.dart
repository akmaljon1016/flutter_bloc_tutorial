part of 'add_number_bloc.dart';

@immutable
abstract class AddNumberEvent {}

class AddEvent extends AddNumberEvent {
  final int num1;
  final int num2;

  AddEvent(this.num1, this.num2);
}
