import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'inc_dec_state.dart';

class IncDecCubit extends Cubit<IncDecState> {
  IncDecCubit() : super(IncDecState.initial());
  void incrementCount(){

    emit(state.copyWith(count: state.count+1));
  }
  void decrementCount(){
    emit(state.copyWith(count: state.count-1));
  }
}
