
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'number_event.dart';
part 'number_state.dart';

class NumberBloc extends Bloc<NumberEvent, NumberState> {
  int son=0;
  NumberBloc() : super(NumberInitial()) {
    on<AddButtonEvent>(addNumber);
  }

  void addNumber(AddButtonEvent event,Emitter<NumberState> emit){
    son = son+1;
    emit(NumberChange(son));
  }
}
