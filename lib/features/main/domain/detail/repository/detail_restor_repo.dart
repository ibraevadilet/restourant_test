import 'package:restaurants_test/features/main/domain/detail/entity/detail_entity.dart';

abstract class DetailRestoRepo {
  Future<DetailEntity> getDetailRest(int id);
}
