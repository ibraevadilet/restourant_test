import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:restaurants_test/features/main/domain/main/entity/all_restourant_entity.dart';
import 'package:restaurants_test/features/main/domain/main/usecase/get_all_restorant_use_case.dart';
import 'package:restaurants_test/server/catch_exception.dart';

part 'get_all_restourants_state.dart';
part 'get_all_restourants_cubit.freezed.dart';

class GetAllRestourantsCubit extends Cubit<GetAllRestourantsState> {
  GetAllRestourantsCubit({required this.usecase})
      : super(const GetAllRestourantsState.loading());
  final AllRestourantUseCase usecase;

  getAllRest({String? keyword}) async {
    emit(const GetAllRestourantsState.loading());
    try {
      emit(GetAllRestourantsState.success(
          await usecase.getAllRest(keyword: keyword)));
    } catch (e) {
      emit(GetAllRestourantsState.error(CatchException.convertException(e)));
    }
  }

  getFavoriteRests() async {
    emit(const GetAllRestourantsState.loading());
    try {
      emit(GetAllRestourantsState.success(await usecase.getFavoriteRest()));
    } catch (e) {
      emit(GetAllRestourantsState.error(CatchException.convertException(e)));
    }
  }

  getRestsPositin({String? keyword}) async {
    emit(const GetAllRestourantsState.loading());
    try {
      emit(GetAllRestourantsState.successPositin(
          await usecase.getRestPosition(keyword: keyword)));
    } catch (e) {
      emit(GetAllRestourantsState.error(CatchException.convertException(e)));
    }
  }
}
