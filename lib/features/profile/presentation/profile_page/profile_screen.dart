import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:restaurants_test/components/custom_app_bar.dart';
import 'package:restaurants_test/components/spaces.dart';
import 'package:restaurants_test/core/images/app_images.dart';
import 'package:restaurants_test/features/profile/presentation/bloc/cubit/user_profile_cubit.dart';
import 'package:restaurants_test/features/profile/presentation/profile_page/widgets/apply_response_card.dart';
import 'package:restaurants_test/routes/mobile_app_router.dart';
import 'package:restaurants_test/server/service_locator.dart';
import 'package:restaurants_test/theme/app_colors.dart';
import 'package:restaurants_test/theme/text_styles.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(title: 'Профиль'),
        body: Center(
          child: BlocProvider(
            create: (context) => UserProfileCubit(),
            child: BlocBuilder<UserProfileCubit, UserProfileState>(
              builder: (context, state) {
                return state.when(
                    initial: (name, email) => Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(height: 38),
                            SvgPicture.asset(
                              AppImages.profileIcon,
                              height: 100,
                            ),
                            const SizedBox(height: 20),
                            Text(
                              name,
                              style: const TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(height: 12),
                            Text(
                              email,
                              style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.color929292),
                            ),
                            const SizedBox(height: 27),
                            Container(
                              alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.only(left: 29),
                              height: 55,
                              width: getWidth(context),
                              color: AppColors.colorWhite,
                              child: TextButton(
                                onPressed: () => showDialog(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      AlertDialog(
                                    insetPadding: EdgeInsets.zero,
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 18, horizontal: 12),
                                    titlePadding: const EdgeInsets.symmetric(
                                        vertical: 32),
                                    shape: const RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    ),
                                    title: const Text(
                                      'Вы действительно хотите выйти?',
                                      textAlign: TextAlign.center,
                                      style: AppTextStyles.s16w700black,
                                    ),
                                    content: SizedBox(
                                      child: Row(
                                        children: [
                                          ApplyResponseCard(
                                            icon: const Icon(Icons.close,
                                                color: AppColors.colorWhite),
                                            text: 'Выйти',
                                            backgroundColor: Colors.red,
                                            onTap: () => sl<SharedPreferences>()
                                                .clear()
                                                .then(
                                                  (value) => context.router
                                                      .pushAndPopUntil(
                                                    const AuthScreenRoute(),
                                                    predicate: (route) => false,
                                                  ),
                                                ),
                                          ),
                                          const SizedBox(width: 8),
                                          ApplyResponseCard(
                                            icon: const Icon(Icons.done,
                                                color: AppColors.colorWhite),
                                            text: 'Отмена',
                                            backgroundColor: Colors.green,
                                            onTap: () => Navigator.pop(context),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                child: const Text(
                                  'Выйти',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.colorEC3A4D),
                                ),
                              ),
                            )
                          ],
                        ));
              },
            ),
          ),
        ));
  }
}
