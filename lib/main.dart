import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:restaurants_test/components/app_scroll_behavior.dart';
import 'package:restaurants_test/components/init_widget.dart';
import 'package:restaurants_test/routes/mobile_app_router.dart';
import 'package:restaurants_test/server/service_locator.dart' as di;
import 'package:restaurants_test/theme/font_family.dart';

final scaffoldKey = GlobalKey<ScaffoldMessengerState>();
final appRouter = MobileAppRouter();

void main() async {
  await di.init();
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InitWidget(
      child: Builder(
        builder: (context) => MaterialApp.router(
          scrollBehavior: AppScrollBehavior(),
          scaffoldMessengerKey: scaffoldKey,
          theme: lightTheme,
          title: 'Oplati',
          debugShowCheckedModeBanner: false,
          routeInformationParser: appRouter.defaultRouteParser(),
          routerDelegate: appRouter.delegate(),
          routeInformationProvider: appRouter.routeInfoProvider(),
          supportedLocales: context.supportedLocales,
          localizationsDelegates: context.localizationDelegates,
          locale: context.locale,
        ),
      ),
    );
  }
}
