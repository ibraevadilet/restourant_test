import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurants_test/components/app_error_text.dart';
import 'package:restaurants_test/components/app_indicator.dart';
import 'package:restaurants_test/components/custom_finder_text_field.dart';
import 'package:restaurants_test/features/main/presentation/main/bloc/get_all_restourants_cubit/get_all_restourants_cubit.dart';
import 'package:restaurants_test/features/main/presentation/main/main_page/widgets/restourants_card.dart';
import 'package:flutter/services.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: SafeArea(
        child: Scaffold(
          body: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  FinderTextField(
                    onFieldSubmitted: (value) => context
                        .read<GetAllRestourantsCubit>()
                        .getAllRest(keyword: value),
                  ),
                  const SizedBox(height: 20),
                  Expanded(
                    child: BlocBuilder<GetAllRestourantsCubit,
                        GetAllRestourantsState>(
                      builder: (context, state) {
                        return state.maybeWhen(
                          orElse: () => const SizedBox(),
                          loading: () => const AppIndicator(),
                          success: (model) => model.isEmpty
                              ? const Center(
                                  child: Text('Ресторанов нет'),
                                )
                              : ListView.builder(
                                  itemCount: model.length,
                                  itemBuilder: (context, index) =>
                                      RestourantsListCard(
                                    model: model[index],
                                  ),
                                ),
                          error: (error) => AppErrorText(
                            text: error.message,
                            onPress: () => context
                                .read<GetAllRestourantsCubit>()
                                .getAllRest(),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
