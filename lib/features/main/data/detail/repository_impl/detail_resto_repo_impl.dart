import 'package:dio/dio.dart';
import 'package:restaurants_test/features/main/data/detail/models/detail_model/detail_model.dart';
import 'package:restaurants_test/features/main/domain/detail/entity/detail_entity.dart';
import 'package:restaurants_test/features/main/domain/detail/repository/detail_restor_repo.dart';
import 'package:restaurants_test/server/catch_exception.dart';

class DetailRestoRepoImpl implements DetailRestoRepo {
  DetailRestoRepoImpl({required this.dio});
  final Dio dio;

  @override
  Future<DetailEntity> getDetailRest(int id) async {
    try {
      Response response = await dio.get('restaurants/details/$id');
      return DetailModel.fromJson(response.data["restaurant"][0]).toEntity();
    } catch (e) {
      throw CatchException.convertException(e);
    }
  }
}
