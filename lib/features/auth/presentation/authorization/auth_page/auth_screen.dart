import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurants_test/components/custom_app_bar.dart';
import 'package:restaurants_test/components/custom_text_field.dart';
import 'package:restaurants_test/components/default_button.dart';
import 'package:restaurants_test/components/styled_toasts.dart';
import 'package:restaurants_test/features/auth/presentation/authorization/bloc/auth/auth_cubit.dart';
import 'package:restaurants_test/routes/mobile_app_router.dart';
import 'package:restaurants_test/server/service_locator.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  TextEditingController loginController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    loginController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Авторизация'),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomTextField(
            hintText: 'Логин или почта',
            controller: loginController,
          ),
          CustomTextField(
            hintText: 'Пароль',
            isUnderLine: false,
            controller: passwordController,
          ),
          const SizedBox(height: 32),
          BlocProvider(
            create: (context) => sl<AuthCubit>(),
            child: BlocConsumer<AuthCubit, AuthState>(
              listener: (context, state) => state.whenOrNull(
                  success: () => context.router.pushAndPopUntil(
                        const BottomNavigatorRoute(),
                        predicate: (route) => false,
                      ),
                  error: (error) => showErrorSnackBar(context, error.message)),
              builder: (context, state) {
                return DefaultButton(
                    isLoading: state.isLoading,
                    text: 'Войти',
                    onPress: () => context.read<AuthCubit>().getAuthToken(
                          email: loginController.text,
                          password: passwordController.text,
                        ));
              },
            ),
          ),
          const SizedBox(height: 19),
          DefaultButton(
            text: 'Зарегистрироваться',
            onPress: () {
              context.router.push(const RegistrationScreenRoute());
            },
          ),
        ],
      ),
    );
  }
}
