import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:restaurants_test/components/favorite_button/bloc/favorite_cubit.dart';
import 'package:restaurants_test/components/favorite_button/response/favorite_repo.dart';
import 'package:restaurants_test/components/favorite_button/response/favorite_repo_impl.dart';
import 'package:restaurants_test/features/auth/data/authorization/repository_impl/auth_repo_impl.dart';
import 'package:restaurants_test/features/auth/data/registration/repository_impl/registr_impl.dart';
import 'package:restaurants_test/features/auth/domain/authorization/repository/auth_repo.dart';
import 'package:restaurants_test/features/auth/domain/authorization/usecase/auth_use_case.dart';
import 'package:restaurants_test/features/auth/domain/registration/repository/registr_repo.dart';
import 'package:restaurants_test/features/auth/domain/registration/usecase/registr_use_case.dart';
import 'package:restaurants_test/features/auth/presentation/authorization/bloc/auth/auth_cubit.dart';
import 'package:restaurants_test/features/auth/presentation/registration/bloc/cubit/registration_cubit.dart';
import 'package:restaurants_test/features/main/data/detail/repository_impl/detail_resto_repo_impl.dart';
import 'package:restaurants_test/features/main/data/main/repository_impl/get_all_restorant_repo_impl.dart';
import 'package:restaurants_test/features/main/domain/detail/repository/detail_restor_repo.dart';
import 'package:restaurants_test/features/main/domain/detail/usecase/detail_rest_use_case.dart';
import 'package:restaurants_test/features/main/domain/main/repository/get_all_restourants_repo.dart';
import 'package:restaurants_test/features/main/domain/main/usecase/get_all_restorant_use_case.dart';
import 'package:restaurants_test/features/main/presentation/detail/bloc/cubit/detail_resto_cubit.dart';
import 'package:restaurants_test/features/main/presentation/main/bloc/get_all_restourants_cubit/get_all_restourants_cubit.dart';
import 'package:restaurants_test/features/splash/splash_cubit/splash_cubit.dart';
import 'package:restaurants_test/routes/mobile_app_router.gr.dart';
import 'package:restaurants_test/server/dio_settings.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

Future<void> init() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  final sharedPreferences = await SharedPreferences.getInstance();

  sl.registerLazySingleton<SharedPreferences>(
    () => sharedPreferences,
  );

  sl.registerLazySingleton<Dio>(
    () => DioSettings().dio,
  );
  sl.registerSingleton<MobileAppRouter>(MobileAppRouter());

  /// Repository
  sl.registerLazySingleton<RegistrRepo>(
    () => RegistrRepoImpl(dio: sl(), prefs: sl()),
  );
  sl.registerLazySingleton<AuthRepo>(
    () => AuthrRepoImpl(dio: sl(), prefs: sl()),
  );
  sl.registerLazySingleton<GetAllRestourantRepo>(
    () => GetAllRestourantRepoImpl(dio: sl()),
  );
  sl.registerLazySingleton<DetailRestoRepo>(
    () => DetailRestoRepoImpl(dio: sl()),
  );

  sl.registerLazySingleton<FavoriteRepo>(
    () => FavoriteRepoImpl(dio: sl()),
  );

  /// UseCases
  sl.registerLazySingleton<RegistrCase>(
    () => RegistrCase(
      repository: sl(),
    ),
  );
  sl.registerLazySingleton<AuthCase>(
    () => AuthCase(
      repository: sl(),
    ),
  );
  sl.registerLazySingleton<AllRestourantUseCase>(
    () => AllRestourantUseCase(
      repo: sl(),
    ),
  );
  sl.registerLazySingleton<DetailRestoUseCase>(
    () => DetailRestoUseCase(
      repo: sl(),
    ),
  );

  /// BLoCs / Cubits

  sl.registerFactory(
    () => SplashCubit(
      prefs: sl(),
    ),
  );

  sl.registerFactory(
    () => RegistrationCubit(
      usecase: sl(),
    ),
  );
  sl.registerFactory(
    () => AuthCubit(
      usecase: sl(),
    ),
  );
  sl.registerFactory(
    () => GetAllRestourantsCubit(
      usecase: sl(),
    ),
  );

  sl.registerFactory(
    () => DetailRestoCubit(
      usecase: sl(),
    ),
  );

  sl.registerFactory(
    () => FavoriteCubit(
      favoriteRepo: sl(),
    ),
  );
}
