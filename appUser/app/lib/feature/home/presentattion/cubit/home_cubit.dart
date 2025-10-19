

import 'package:app/feature/model/modelUser.dart';
import 'package:app/feature/service/servicio.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
 

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final ServiceHome api = ServiceHome();

  HomeCubit() : super(HomeInitial());

  Future<void> fetchData( ) async {
    try {
      emit(HomeLoading());
      emit(HomeSuccess(

        placeholders: await api.obtenerPlaceholder()
        
      ));
    } catch (e) {
      emit(HomeFailure());
    }
  }
}
