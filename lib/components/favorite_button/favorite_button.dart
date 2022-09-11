import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:restaurants_test/components/favorite_button/bloc/favorite_cubit.dart';
import 'package:restaurants_test/core/images/app_images.dart';
import 'package:restaurants_test/server/service_locator.dart';
import 'package:restaurants_test/theme/app_colors.dart';

class FavoriteButton extends StatelessWidget {
  const FavoriteButton(
      {Key? key,
      required this.isFavorite,
      required this.id,
      this.color = AppColors.colorBlack,
      this.width = 25})
      : super(key: key);

  final bool isFavorite;
  final Color color;
  final double width;
  final int id;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<FavoriteCubit>()..getFavorite(isFavorite),
      child: BlocBuilder<FavoriteCubit, FavoriteState>(
        builder: (context, state) {
          return state.when(
            initial: (isFavorite) => IconButton(
              onPressed: () {
                context.read<FavoriteCubit>().addDelete(
                      !isFavorite,
                      id
                    );
              },
              icon: SvgPicture.asset(
                isFavorite ? AppImages.favoriteIconRed : AppImages.favoriteIcon,
                color: isFavorite ? null : color,
                width: width,
              ),
            ),
          );
        },
      ),
    );
  }
}
