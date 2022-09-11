import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurants_test/components/app_error_text.dart';
import 'package:restaurants_test/components/app_indicator.dart';
import 'package:restaurants_test/features/main/presentation/detail/bloc/cubit/detail_resto_cubit.dart';
import 'package:restaurants_test/features/main/presentation/detail/detail_page/widgets/detail_widget_app_bar.dart';
import 'package:restaurants_test/features/main/presentation/detail/detail_page/widgets/detail_widget_description.dart';
import 'package:restaurants_test/features/main/presentation/detail/detail_page/widgets/time_and_adress_container.dart';
import 'package:restaurants_test/server/service_locator.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({required this.id, Key? key}) : super(key: key);
  final int id;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<DetailRestoCubit>()..getDetailResto(id),
      child: Scaffold(body: BlocBuilder<DetailRestoCubit, DetailRestoState>(
        builder: (context, state) {
          return state.when(
            loading: () => const AppIndicator(),
            success: (model) => Column(
              children: [
                DetailAppBarWidget(
                  title: model.title,
                  isFavorite: model.isFavorite,
                  image: model.imaage,
                  id: model.id,
                ),
                const SizedBox(height: 16),
                DetailWidgetDescription(
                  description: model.description,
                ),
                const SizedBox(height: 20),
                TimeAndAdressContainer(
                    open: model.opening,
                    close: model.closing,
                    adress: model.adress)
              ],
            ),
            error: (error) => AppErrorText(
              text: error.message,
              onPress: () =>
                  context.read<DetailRestoCubit>().getDetailResto(id),
            ),
          );
        },
      )),
    );
  }
}
