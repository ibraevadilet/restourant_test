part of 'detail_resto_cubit.dart';

@freezed
class DetailRestoState with _$DetailRestoState {
  const factory DetailRestoState.loading() = _Initial;
  const factory DetailRestoState.success(DetailEntity model) = _Success;
  const factory DetailRestoState.error(CatchException error) = _Error;
}
