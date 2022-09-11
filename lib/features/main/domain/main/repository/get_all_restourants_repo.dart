import 'package:restaurants_test/features/main/domain/main/entity/all_restourant_entity.dart';

abstract class GetAllRestourantRepo {
  Future<List<AllRestourantEntity>> getRest({String? keyword});
}
