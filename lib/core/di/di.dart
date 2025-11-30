// ignore_for_file: cascade_invocations

import 'package:get_it/get_it.dart';
import 'package:yamakan/features/my_app/locale_controller/locale_controller.dart';

final GetIt getIt = GetIt.instance;

Future<void> setupGetIt() async {
  getIt.registerSingleton<LocaleController>(
    LocaleController(),
  );
}
