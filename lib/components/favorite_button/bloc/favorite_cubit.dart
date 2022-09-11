import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurants_test/components/favorite_button/response/favorite_repo.dart';

part 'favorite_state.dart';
part 'favorite_cubit.freezed.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  FavoriteCubit({required this.favoriteRepo})
      : super(const FavoriteState.initial(false));
  FavoriteRepo favoriteRepo;

  getFavorite(bool isFavorite) {
    emit(FavoriteState.initial(isFavorite));
  }

  addDelete(bool isFavorite, int id) {
    isFavorite ? favoriteRepo.addFavorite(id) : favoriteRepo.deleteFavorite(id);
    emit(FavoriteState.initial(isFavorite));
  }
}
