import 'package:dio/dio.dart';
import 'package:restaurants_test/components/favorite_button/response/favorite_repo.dart';
import 'package:restaurants_test/server/catch_exception.dart';

class FavoriteRepoImpl implements FavoriteRepo {
  FavoriteRepoImpl({required this.dio});
  Dio dio;
  @override
  addFavorite(int id) async {
    try {
      Response response = await dio.post(
        'likes/new',
        data: {'restaurant_id': id},
      );
      return response.data;
    } catch (e) {
      CatchException.convertException(e);
    }
  }

  @override
  deleteFavorite(int id) async {
    try {
      Response response = await dio.delete('likes/$id');
      return response.data;
    } catch (e) {
      CatchException.convertException(e);
    }
  }
}
