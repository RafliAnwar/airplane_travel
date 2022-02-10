import 'package:bloc/bloc.dart';

class SeatCubit extends Cubit<List<String>> {
  SeatCubit() : super([]);

  void selectSeat(String id) {
    print('initial state $state');
    state.add(id);
    print('currentState : $state');
    emit(state);
  }
}
