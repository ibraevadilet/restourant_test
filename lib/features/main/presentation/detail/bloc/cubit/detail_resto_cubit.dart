import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurants_test/features/main/domain/detail/entity/detail_entity.dart';
import 'package:restaurants_test/features/main/domain/detail/usecase/detail_rest_use_case.dart';
import 'package:restaurants_test/server/catch_exception.dart';

part 'detail_resto_state.dart';
part 'detail_resto_cubit.freezed.dart';

class DetailRestoCubit extends Cubit<DetailRestoState> {
  DetailRestoCubit({required this.usecase})
      : super(const DetailRestoState.loading());
  DetailRestoUseCase usecase;

  getDetailResto(int id) async {
    try {
      emit(DetailRestoState.success(await usecase.getDetailRest(id)));
    } catch (e) {
      emit(DetailRestoState.error(CatchException.convertException(e)));
    }
  }
}
