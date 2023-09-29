part of 'add_number_bloc.dart';

@immutable
abstract class AddNumberState {}

class AddNumberInitial extends AddNumberState {}

class AddResult extends AddNumberState {
  final int natija;

  AddResult(this.natija);
}
