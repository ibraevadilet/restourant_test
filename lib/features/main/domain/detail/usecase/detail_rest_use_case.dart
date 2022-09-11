import 'package:restaurants_test/features/main/domain/detail/entity/detail_entity.dart';
import 'package:restaurants_test/features/main/domain/detail/repository/detail_restor_repo.dart';

class DetailRestoUseCase {
  DetailRestoUseCase({required this.repo});
  final DetailRestoRepo repo;

  Future<DetailEntity> getDetailRest(int id) {
    final response = repo.getDetailRest(id);
    return response;
  }
}
