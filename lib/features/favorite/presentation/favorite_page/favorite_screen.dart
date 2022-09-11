import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurants_test/components/app_error_text.dart';
import 'package:restaurants_test/components/app_indicator.dart';
import 'package:restaurants_test/components/custom_app_bar.dart';
import 'package:restaurants_test/features/main/presentation/main/bloc/get_all_restourants_cubit/get_all_restourants_cubit.dart';
import 'package:restaurants_test/features/main/presentation/main/main_page/widgets/restourants_card.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(title: 'Избранные'),
        body: BlocBuilder<GetAllRestourantsCubit, GetAllRestourantsState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => const SizedBox(),
              loading: () => const AppIndicator(),
              error: (error) => AppErrorText(
                text: error.message,
                onPress: () =>
                    context.read<GetAllRestourantsCubit>().getFavoriteRests(),
              ),
              success: (model) => model.isEmpty
                  ? const Center(
                      child: Text('У вас нет избранных ресторанов'),
                    )
                  : ListView.builder(
                      itemCount: model.length,
                      itemBuilder: (context, index) => RestourantsListCard(
                        model: model[index],
                      ),
                    ),
            );
          },
        ),
      ),
    );
  }
}
