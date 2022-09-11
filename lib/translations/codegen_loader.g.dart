// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader {
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String, dynamic> ru = {
    "catchExTimeOfProcessing":
        "Привышено время обработки запроса.\nПовторите позднее",
    "catchExNoInternet": "Нет интернет соеденения",
    "catchExRequestDenied": "Запрос отклонен",
    "catchExLoginNotFound": "Данный логин не найден",
    "catchExSystemError": "Произошла системная ошибка",
    "catchExSessionExpired":
        "Ваша сессия истекла. Просьба авторизоваться повторно!",
    "ribbon": "Лента",
    "map": "Карта",
    "favorite": "Избранные",
    "profile": "Профиль"
  };
  static const Map<String, dynamic> kz = {
    "catchExTimeOfProcessing":
        "Привышено время обработки запроса.\nПовторите позднее",
    "catchExNoInternet": "Нет интернет соеденения",
    "catchExRequestDenied": "Запрос отклонен",
    "catchExLoginNotFound": "Данный логин не найден",
    "catchExSystemError": "Произошла системная ошибка",
    "catchExSessionExpired":
        "Ваша сессия истекла. Просьба авторизоваться повторно!",
    "ribbon": "Лента",
    "map": "Карта",
    "favorite": "Избранные",
    "profile": "Профиль"
  };
  static const Map<String, Map<String, dynamic>> mapLocales = {
    "ru": ru,
    "kz": kz
  };
}
