import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurants_test/core/images/app_images.dart';
import 'package:restaurants_test/features/splash/splash_cubit/splash_cubit.dart';
import 'package:restaurants_test/routes/mobile_app_router.dart';
import 'package:restaurants_test/server/service_locator.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<SplashCubit>(
        create: (context) => sl<SplashCubit>(),
        child: BlocConsumer<SplashCubit, SplashState>(
          listener: (context, state) {
            state.whenOrNull(
              authenticated: () => context.router.pushAndPopUntil(
                const BottomNavigatorRoute(),
                predicate: (route) => false,
              ),
              unauthenticated: () => context.router.pushAndPopUntil(
                const AuthScreenRoute(),
                predicate: (route) => false,
              ),
            );
          },
          builder: (context, state) {
            return SafeArea(
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppImages.logo,
                      height: 48,
                      width: 180,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
