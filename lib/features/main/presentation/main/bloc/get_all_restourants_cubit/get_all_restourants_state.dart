part of 'get_all_restourants_cubit.dart';

@freezed
class GetAllRestourantsState with _$GetAllRestourantsState {
  const factory GetAllRestourantsState.loading() = _Loading;
  const factory GetAllRestourantsState.success(
      List<AllRestourantEntity> model) = _Success;
      const factory GetAllRestourantsState.successPositin(
      Set<Marker> model) = _SuccessPositin;
  const factory GetAllRestourantsState.error(CatchException error) = _Error;
}
