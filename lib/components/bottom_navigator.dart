import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:restaurants_test/core/images/app_images.dart';
import 'package:restaurants_test/features/main/presentation/main/bloc/get_all_restourants_cubit/get_all_restourants_cubit.dart';
import 'package:restaurants_test/routes/mobile_app_router.dart';
import 'package:restaurants_test/theme/app_colors.dart';

class BottomNavigator extends StatelessWidget {
  const BottomNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      backgroundColor: AppColors.backgroundColor,
      routes: const [
        MainScreenNavigator(),
        MapScreenNavigator(),
        FavoriteScreenNavigator(),
        ProfileScreenNavigator(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) => ClipRRect(
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: AppColors.colorWhite,
          selectedItemColor: AppColors.color4631D2,
          unselectedItemColor: AppColors.colorBlack,
          currentIndex: tabsRouter.activeIndex,
          onTap: (index) {
            if (index == 0) {
              context.read<GetAllRestourantsCubit>().getAllRest();
              tabsRouter.setActiveIndex(index);
            } 
            else if (index == 1) {
              context.read<GetAllRestourantsCubit>().getRestsPositin();
              tabsRouter.setActiveIndex(index);
            }else if (index == 2) {
              context.read<GetAllRestourantsCubit>().getFavoriteRests();
              tabsRouter.setActiveIndex(index);
            } else {
              tabsRouter.setActiveIndex(index);
            }
          },
          items: [
            BottomNavigationBarItem(
              activeIcon: SvgPicture.asset(
                AppImages.ribbonIcon,
                color: AppColors.color4631D2,
              ),
              icon: SvgPicture.asset(
                AppImages.ribbonIcon,
                color: AppColors.colorBlack,
              ),
              label: 'ribbon'.tr(),
            ),
            BottomNavigationBarItem(
              activeIcon: SvgPicture.asset(AppImages.mapIcon,
                  color: AppColors.color4631D2),
              icon: SvgPicture.asset(
                AppImages.mapIcon,
                color: AppColors.colorBlack,
              ),
              label: 'map'.tr(),
            ),
            BottomNavigationBarItem(
              activeIcon: SvgPicture.asset(AppImages.favoriteIcon,
                  color: AppColors.color4631D2),
              icon: SvgPicture.asset(
                AppImages.favoriteIcon,
                color: AppColors.colorBlack,
              ),
              label: 'favorite'.tr(),
            ),
            BottomNavigationBarItem(
              activeIcon: SvgPicture.asset(AppImages.profileIcon,
                  color: AppColors.color4631D2),
              icon: SvgPicture.asset(
                AppImages.profileIcon,
                color: AppColors.colorBlack,
              ),
              label: 'profile'.tr(),
            ),
          ],
        ),
      ),
    );
  }
}
