import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:restaurants_test/components/bottom_navigator.dart';
import 'package:restaurants_test/features/auth/presentation/authorization/auth_page/auth_screen.dart';
import 'package:restaurants_test/features/auth/presentation/registration/registration_page/registration_screen.dart';
import 'package:restaurants_test/features/favorite/presentation/favorite_page/favorite_screen.dart';
import 'package:restaurants_test/features/main/presentation/detail/detail_page/detail_screen.dart';
import 'package:restaurants_test/features/main/presentation/main/main_page/main_screen.dart';
import 'package:restaurants_test/features/map/presentation/map_page/map_screen.dart';
import 'package:restaurants_test/features/profile/presentation/profile_page/profile_screen.dart';
import 'package:restaurants_test/features/splash/splash_screen.dart';

export 'package:auto_route/auto_route.dart';

export 'mobile_app_router.gr.dart';

@CupertinoAutoRouter(
  routes: <AutoRoute>[
    AdaptiveRoute(
      page: SplashScreen,
      initial: true,
      path: '/',
    ),
    AdaptiveRoute(
      page: AuthScreen,
      path: '/auth',
    ),
    AdaptiveRoute(
      page: RegistrationScreen,
      path: '/registr',
    ),
    AdaptiveRoute(
      page: BottomNavigator,
      path: '/navigator',
      children: [
        AutoRoute(
          path: 'main',
          page: EmptyRouterPage,
          name: 'MainScreenNavigator',
          children: [
            AutoRoute(
              path: '',
              page: MainScreen,
            ),
            AutoRoute(
              path: '',
              page: DetailScreen,
            ),
            RedirectRoute(
              path: '*',
              redirectTo: '',
            ),
          ],
        ),
        AutoRoute(
          path: 'map',
          page: EmptyRouterPage,
          name: 'MapScreenNavigator',
          children: [
            AutoRoute(
              path: '',
              page: MapScreen,
            ),
            RedirectRoute(
              path: '*',
              redirectTo: '',
            ),
          ],
        ),
        AutoRoute(
          path: 'favorite',
          page: EmptyRouterPage,
          name: 'FavoriteScreenNavigator',
          children: [
            AutoRoute(
              path: '',
              page: FavoriteScreen,
            ),
            AutoRoute(
              path: '',
              page: DetailScreen,
            ),
            RedirectRoute(
              path: '*',
              redirectTo: '',
            ),
          ],
        ),
        AutoRoute(
          path: 'profile',
          page: EmptyRouterPage,
          name: 'ProfileScreenNavigator',
          children: [
            AutoRoute(
              path: '',
              page: ProfileScreen,
            ),
            RedirectRoute(
              path: '*',
              redirectTo: '',
            ),
          ],
        ),
      ],
    )
  ],
)
@injectable
class $MobileAppRouter {}
