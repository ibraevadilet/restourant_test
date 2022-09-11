import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:restaurants_test/components/app_indicator.dart';
import 'package:restaurants_test/components/favorite_button/favorite_button.dart';
import 'package:restaurants_test/components/spaces.dart';
import 'package:restaurants_test/theme/app_colors.dart';
import 'package:restaurants_test/theme/text_styles.dart';

class DetailAppBarWidget extends StatelessWidget {
  const DetailAppBarWidget({
    required this.title,
    required this.isFavorite,
    required this.id,
    this.image,
    Key? key,
  }) : super(key: key);
  final int id;
  final String title;
  final bool isFavorite;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CachedNetworkImage(
          imageUrl: image ??
              'https://media-cdn.tripadvisor.com/media/photo-s/0d/5e/74/cb/caption.jpg',
          imageBuilder: (context, imageProvider) => Container(
            height: 240,
            decoration: BoxDecoration(
              image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
            ),
          ),
          progressIndicatorBuilder: (context, url, progress) =>
              const AppIndicator(),
        ),
        Container(
          height: 140,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black.withOpacity(0.9),
              Colors.black.withOpacity(0.75),
              Colors.black.withOpacity(0.0),
            ],
          )),
        ),
        Positioned(
          top: 40,
          child: Container(
            width: getWidth(context),
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: AppColors.colorWhite,
                    )),
                Text(
                  title,
                  style: AppTextStyles.s16w700White
                      .copyWith(color: AppColors.colorWhite),
                ),
                FavoriteButton(
                  isFavorite: isFavorite,
                  color: AppColors.colorWhite,
                  id: id,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
