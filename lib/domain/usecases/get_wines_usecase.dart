import '../entities/wine_entity.dart';
import '../../data/repositories/wine_repository.dart';

class GetWinesUseCase {
  final WineRepository repository;

  GetWinesUseCase(this.repository);

  Future<List<WineEntity>> call() async {
    return await repository.getWines();
  }
}
