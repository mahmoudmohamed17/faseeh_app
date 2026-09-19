import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'core/utils/locale_manager.dart';
import 'faseeh_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: LocaleManager.supportedLocales,
      path: LocaleManager.translationPath,
      fallbackLocale: LocaleManager.fallbackLocale,
      startLocale: LocaleManager.initialLocale,
      child: const FaseehApp(),
    ),
  );
}
