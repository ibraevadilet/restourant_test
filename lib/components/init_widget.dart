import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurants_test/components/app_unfocuser.dart';
import 'package:restaurants_test/features/main/presentation/main/bloc/get_all_restourants_cubit/get_all_restourants_cubit.dart';
import 'package:restaurants_test/server/service_locator.dart';
import 'package:restaurants_test/translations/codegen_loader.g.dart';

class InitWidget extends StatelessWidget {
  const InitWidget({
    required this.child,
    Key? key,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      assetLoader: const CodegenLoader(),
      path: 'assets/translations',
      supportedLocales: const [
        Locale('ru'),
        Locale('kz'),
      ],
      fallbackLocale: const Locale('ru'),
      child: BlocProvider(
        create: (context) => sl<GetAllRestourantsCubit>()..getAllRest(),
        child: AppUnfocuser(
          child: child,
        ),
      ),
    );
  }
}
