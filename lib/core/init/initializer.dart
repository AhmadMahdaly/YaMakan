import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yamakan/core/cache_helper/cache_helper.dart';
import 'package:yamakan/core/di/di.dart';

Future<void> initializeApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  await setupGetIt();
  await EasyLocalization.ensureInitialized();
  await SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ],
  );
}
