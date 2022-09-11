import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:restaurants_test/components/app_indicator.dart';
import 'package:restaurants_test/components/favorite_button/favorite_button.dart';
import 'package:restaurants_test/components/spaces.dart';
import 'package:restaurants_test/features/main/domain/main/entity/all_restourant_entity.dart';
import 'package:restaurants_test/routes/mobile_app_router.dart';
import 'package:restaurants_test/theme/app_colors.dart';
import 'package:restaurants_test/theme/text_styles.dart';

class RestourantsListCard extends StatelessWidget {
  const RestourantsListCard({
    required this.model,
    Key? key,
  }) : super(key: key);
  final AllRestourantEntity model;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () => context.router.push(DetailScreenRoute(id: model.id)),
          child: Container(
            height: 245,
            width: getWidth(context),
            decoration: BoxDecoration(
                color: AppColors.colorWhite,
                borderRadius: BorderRadius.circular(6)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CachedNetworkImage(
                  imageUrl: model.imaage ??
                      'https://media-cdn.tripadvisor.com/media/photo-s/0d/5e/74/cb/caption.jpg',
                  imageBuilder: (context, imageProvider) => Container(
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  progressIndicatorBuilder: (context, url, progress) =>
                      const AppIndicator(),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 24),
                  child: Center(
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 12),
                              Text(
                                model.title,
                                style: AppTextStyles.s16w700black,
                              ),
                              const SizedBox(height: 3),
                              Text(model.description,
                                  style:
                                      AppTextStyles.s16w400color929292manrope,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis),
                            ],
                          ),
                        ),
                        FavoriteButton(
                          isFavorite: model.isFavorite,
                          width: 30,
                          id: model.id,
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 3),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text(model.adress,
                      style: AppTextStyles.s16w400color929292manrope,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis),
                )
              ],
            ),
          ),
        ),
        const SizedBox(height: 20)
      ],
    );
  }
}
