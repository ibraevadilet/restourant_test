import 'package:dio/dio.dart';
import 'package:restaurants_test/features/main/data/main/models/all_restourants_model/all_restourants_model.dart';
import 'package:restaurants_test/features/main/domain/main/entity/all_restourant_entity.dart';
import 'package:restaurants_test/features/main/domain/main/repository/get_all_restourants_repo.dart';
import 'package:restaurants_test/server/catch_exception.dart';

class GetAllRestourantRepoImpl implements GetAllRestourantRepo {
  GetAllRestourantRepoImpl({required this.dio});
  final Dio dio;
  @override
  Future<List<AllRestourantEntity>> getRest({String? keyword}) async {
    try {
      Response response = await dio.get(
        'restaurants/all',
        queryParameters: {
          'page': 1,
          'perPage': 10,
          'keyword':keyword
        },
      );
      return AllRestourantsModel.fromJson(response.data)
          .restaurants!
          .map<AllRestourantEntity>((e) => e.toEntity())
          .toList();
    } catch (e) {
      throw CatchException.convertException(e);
    }
  }
}
