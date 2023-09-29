import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'add_number_event.dart';

part 'add_number_state.dart';

class AddNumberBloc extends Bloc<AddNumberEvent, AddNumberState> {
  AddNumberBloc() : super(AddNumberInitial()) {
    on<AddEvent>(qoshish);
  }

  void qoshish(AddEvent event, Emitter<AddNumberState> emit) {

    int natija = event.num1+event.num2;
    emit(AddResult(natija));
  }
}
