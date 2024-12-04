import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/usecases/get_wines_usecase.dart';
import 'wine_event.dart';
import 'wine_state.dart';

class WineBloc extends Bloc<WineEvent, WineState> {
  final GetWinesUseCase getWinesUseCase;

  WineBloc(this.getWinesUseCase) : super(WineLoading()) {
    on<LoadWines>((event, emit) async {
      emit(WineLoading());
      try {
        final wines = await getWinesUseCase();
        emit(WineLoaded(wines));
      } catch (_) {
        emit(WineError());
      }
    });
  }
}
