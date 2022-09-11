import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurants_test/components/custom_app_bar.dart';
import 'package:restaurants_test/components/custom_text_field.dart';
import 'package:restaurants_test/components/default_button.dart';
import 'package:restaurants_test/components/styled_toasts.dart';
import 'package:restaurants_test/features/auth/presentation/registration/bloc/cubit/registration_cubit.dart';
import 'package:restaurants_test/routes/mobile_app_router.dart';
import 'package:restaurants_test/server/service_locator.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  TextEditingController loginController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isPhone = false;
  bool isPass = false;

  @override
  void deactivate() {
    loginController.dispose();
    phoneController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Регистрация',
        isLeading: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 32),
            CustomTextField(hintText: 'Логин', controller: loginController),
            CustomTextField(
              hintText: 'Телефон',
              controller: phoneController,
              validator: (value) {
                if (value!.length < 11) {
                  return 'Номер телефона должен содержать минимум 11 цифр';
                } else {
                  isPhone = true;
                  return null;
                }
              },
              textInputType: TextInputType.number,
            ),
            CustomTextField(
              hintText: 'Почта',
              controller: emailController,
              textInputType: TextInputType.emailAddress,
            ),
            CustomTextField(
              hintText: 'Пароль',
              controller: passwordController,
              isUnderLine: false,
              isVisability: true,
              validator: (value) {
                if (value!.length < 8) {
                  return 'Пароль должен содержать минимум 8 символоы';
                } else {
                  isPass = true;
                  return null;
                }
              },
            ),
            const Spacer(),
            BlocProvider(
              create: (_) => sl<RegistrationCubit>(),
              child: BlocConsumer<RegistrationCubit, RegistrationState>(
                listener: (context, state) => state.whenOrNull(
                    success: () => context.router.pushAndPopUntil(
                          const BottomNavigatorRoute(),
                          predicate: (route) => false,
                        ),
                    error: (error) =>
                        showErrorSnackBar(context, error.message)),
                builder: (context, state) {
                  return DefaultButton(
                      isLoading: state.isLoading,
                      text: 'Создать аккаунт',
                      onPress: () => isPhone == true || isPass == true
                          ? context.read<RegistrationCubit>().getToken(
                                email: emailController.text,
                                name: loginController.text,
                                phone: phoneController.text,
                                password: passwordController.text,
                              )
                          : showErrorSnackBar(
                              context, 'Вы не заполнили все поля'));
                },
              ),
            ),
            const SizedBox(height: 10)
          ],
        ),
      ),
    );
  }
}
