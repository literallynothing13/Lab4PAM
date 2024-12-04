import '../../domain/entities/wine_entity.dart';

abstract class WineState {}

class WineLoading extends WineState {}

class WineLoaded extends WineState {
  final List<WineEntity> wines;
  WineLoaded(this.wines);
}

class WineError extends WineState {}