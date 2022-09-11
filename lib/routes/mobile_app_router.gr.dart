// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/material.dart' as _i12;

import '../components/bottom_navigator.dart' as _i4;
import '../features/auth/presentation/authorization/auth_page/auth_screen.dart'
    as _i2;
import '../features/auth/presentation/registration/registration_page/registration_screen.dart'
    as _i3;
import '../features/favorite/presentation/favorite_page/favorite_screen.dart'
    as _i9;
import '../features/main/presentation/detail/detail_page/detail_screen.dart'
    as _i7;
import '../features/main/presentation/main/main_page/main_screen.dart' as _i6;
import '../features/map/presentation/map_page/map_screen.dart' as _i8;
import '../features/profile/presentation/profile_page/profile_screen.dart'
    as _i10;
import '../features/splash/splash_screen.dart' as _i1;
import 'mobile_app_router.dart' as _i5;

class MobileAppRouter extends _i11.RootStackRouter {
  MobileAppRouter([_i12.GlobalKey<_i12.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return _i11.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.SplashScreen());
    },
    AuthScreenRoute.name: (routeData) {
      return _i11.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.AuthScreen());
    },
    RegistrationScreenRoute.name: (routeData) {
      return _i11.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.RegistrationScreen());
    },
    BottomNavigatorRoute.name: (routeData) {
      return _i11.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i4.BottomNavigator());
    },
    MainScreenNavigator.name: (routeData) {
      return _i11.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i5.EmptyRouterPage());
    },
    MapScreenNavigator.name: (routeData) {
      return _i11.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i5.EmptyRouterPage());
    },
    FavoriteScreenNavigator.name: (routeData) {
      return _i11.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i5.EmptyRouterPage());
    },
    ProfileScreenNavigator.name: (routeData) {
      return _i11.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i5.EmptyRouterPage());
    },
    MainScreenRoute.name: (routeData) {
      return _i11.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i6.MainScreen());
    },
    DetailScreenRoute.name: (routeData) {
      final args = routeData.argsAs<DetailScreenRouteArgs>();
      return _i11.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: _i7.DetailScreen(id: args.id, key: args.key));
    },
    MapScreenRoute.name: (routeData) {
      return _i11.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i8.MapScreen());
    },
    FavoriteScreenRoute.name: (routeData) {
      return _i11.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i9.FavoriteScreen());
    },
    ProfileScreenRoute.name: (routeData) {
      return _i11.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i10.ProfileScreen());
    }
  };

  @override
  List<_i11.RouteConfig> get routes => [
        _i11.RouteConfig(SplashScreenRoute.name, path: '/'),
        _i11.RouteConfig(AuthScreenRoute.name, path: '/auth'),
        _i11.RouteConfig(RegistrationScreenRoute.name, path: '/registr'),
        _i11.RouteConfig(BottomNavigatorRoute.name,
            path: '/navigator',
            children: [
              _i11.RouteConfig(MainScreenNavigator.name,
                  path: 'main',
                  parent: BottomNavigatorRoute.name,
                  children: [
                    _i11.RouteConfig(MainScreenRoute.name,
                        path: '', parent: MainScreenNavigator.name),
                    _i11.RouteConfig(DetailScreenRoute.name,
                        path: '', parent: MainScreenNavigator.name),
                    _i11.RouteConfig('*#redirect',
                        path: '*',
                        parent: MainScreenNavigator.name,
                        redirectTo: '',
                        fullMatch: true)
                  ]),
              _i11.RouteConfig(MapScreenNavigator.name,
                  path: 'map',
                  parent: BottomNavigatorRoute.name,
                  children: [
                    _i11.RouteConfig(MapScreenRoute.name,
                        path: '', parent: MapScreenNavigator.name),
                    _i11.RouteConfig('*#redirect',
                        path: '*',
                        parent: MapScreenNavigator.name,
                        redirectTo: '',
                        fullMatch: true)
                  ]),
              _i11.RouteConfig(FavoriteScreenNavigator.name,
                  path: 'favorite',
                  parent: BottomNavigatorRoute.name,
                  children: [
                    _i11.RouteConfig(FavoriteScreenRoute.name,
                        path: '', parent: FavoriteScreenNavigator.name),
                    _i11.RouteConfig(DetailScreenRoute.name,
                        path: '', parent: FavoriteScreenNavigator.name),
                    _i11.RouteConfig('*#redirect',
                        path: '*',
                        parent: FavoriteScreenNavigator.name,
                        redirectTo: '',
                        fullMatch: true)
                  ]),
              _i11.RouteConfig(ProfileScreenNavigator.name,
                  path: 'profile',
                  parent: BottomNavigatorRoute.name,
                  children: [
                    _i11.RouteConfig(ProfileScreenRoute.name,
                        path: '', parent: ProfileScreenNavigator.name),
                    _i11.RouteConfig('*#redirect',
                        path: '*',
                        parent: ProfileScreenNavigator.name,
                        redirectTo: '',
                        fullMatch: true)
                  ])
            ])
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreenRoute extends _i11.PageRouteInfo<void> {
  const SplashScreenRoute() : super(SplashScreenRoute.name, path: '/');

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [_i2.AuthScreen]
class AuthScreenRoute extends _i11.PageRouteInfo<void> {
  const AuthScreenRoute() : super(AuthScreenRoute.name, path: '/auth');

  static const String name = 'AuthScreenRoute';
}

/// generated route for
/// [_i3.RegistrationScreen]
class RegistrationScreenRoute extends _i11.PageRouteInfo<void> {
  const RegistrationScreenRoute()
      : super(RegistrationScreenRoute.name, path: '/registr');

  static const String name = 'RegistrationScreenRoute';
}

/// generated route for
/// [_i4.BottomNavigator]
class BottomNavigatorRoute extends _i11.PageRouteInfo<void> {
  const BottomNavigatorRoute({List<_i11.PageRouteInfo>? children})
      : super(BottomNavigatorRoute.name,
            path: '/navigator', initialChildren: children);

  static const String name = 'BottomNavigatorRoute';
}

/// generated route for
/// [_i5.EmptyRouterPage]
class MainScreenNavigator extends _i11.PageRouteInfo<void> {
  const MainScreenNavigator({List<_i11.PageRouteInfo>? children})
      : super(MainScreenNavigator.name,
            path: 'main', initialChildren: children);

  static const String name = 'MainScreenNavigator';
}

/// generated route for
/// [_i5.EmptyRouterPage]
class MapScreenNavigator extends _i11.PageRouteInfo<void> {
  const MapScreenNavigator({List<_i11.PageRouteInfo>? children})
      : super(MapScreenNavigator.name, path: 'map', initialChildren: children);

  static const String name = 'MapScreenNavigator';
}

/// generated route for
/// [_i5.EmptyRouterPage]
class FavoriteScreenNavigator extends _i11.PageRouteInfo<void> {
  const FavoriteScreenNavigator({List<_i11.PageRouteInfo>? children})
      : super(FavoriteScreenNavigator.name,
            path: 'favorite', initialChildren: children);

  static const String name = 'FavoriteScreenNavigator';
}

/// generated route for
/// [_i5.EmptyRouterPage]
class ProfileScreenNavigator extends _i11.PageRouteInfo<void> {
  const ProfileScreenNavigator({List<_i11.PageRouteInfo>? children})
      : super(ProfileScreenNavigator.name,
            path: 'profile', initialChildren: children);

  static const String name = 'ProfileScreenNavigator';
}

/// generated route for
/// [_i6.MainScreen]
class MainScreenRoute extends _i11.PageRouteInfo<void> {
  const MainScreenRoute() : super(MainScreenRoute.name, path: '');

  static const String name = 'MainScreenRoute';
}

/// generated route for
/// [_i7.DetailScreen]
class DetailScreenRoute extends _i11.PageRouteInfo<DetailScreenRouteArgs> {
  DetailScreenRoute({required int id, _i12.Key? key})
      : super(DetailScreenRoute.name,
            path: '', args: DetailScreenRouteArgs(id: id, key: key));

  static const String name = 'DetailScreenRoute';
}

class DetailScreenRouteArgs {
  const DetailScreenRouteArgs({required this.id, this.key});

  final int id;

  final _i12.Key? key;

  @override
  String toString() {
    return 'DetailScreenRouteArgs{id: $id, key: $key}';
  }
}

/// generated route for
/// [_i8.MapScreen]
class MapScreenRoute extends _i11.PageRouteInfo<void> {
  const MapScreenRoute() : super(MapScreenRoute.name, path: '');

  static const String name = 'MapScreenRoute';
}

/// generated route for
/// [_i9.FavoriteScreen]
class FavoriteScreenRoute extends _i11.PageRouteInfo<void> {
  const FavoriteScreenRoute() : super(FavoriteScreenRoute.name, path: '');

  static const String name = 'FavoriteScreenRoute';
}

/// generated route for
/// [_i10.ProfileScreen]
class ProfileScreenRoute extends _i11.PageRouteInfo<void> {
  const ProfileScreenRoute() : super(ProfileScreenRoute.name, path: '');

  static const String name = 'ProfileScreenRoute';
}
