import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:yamakan/core/constants/color_constants.dart';
import 'package:yamakan/core/di/di.dart';
import 'package:yamakan/features/intro/splash/splash_screen.dart';
import 'package:yamakan/features/my_app/locale_controller/locale_controller.dart';

class YaMakan extends StatelessWidget {
  const YaMakan({super.key});

  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      supportedLocales: const [
        Locale('en'),
        Locale('ar'),
      ],
      path: 'assets/translations',
      child: ScreenUtilInit(
        designSize: const Size(
          390,
          844,
        ),
        minTextAdapt: true,
        child: ChangeNotifierProvider(
          create: (context) => getIt<LocaleController>(),
          child: Consumer<LocaleController>(
            builder: (context, localeModel, child) => MaterialApp(
              debugShowCheckedModeBanner: false,
              home: const SplashScreen(),
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              locale: context.locale,
              builder: (context, navigator) {
                final lang = Localizations.localeOf(context).languageCode;

                return Theme(
                  data: ThemeData(
                    scaffoldBackgroundColor: kScaffoldBackgroundColor,
                    appBarTheme: const AppBarTheme(
                      backgroundColor: kScaffoldBackgroundColor,
                    ),
                    textTheme: Theme.of(context).textTheme.apply(
                          fontFamily: lang == 'ar' ? 'Tajawal' : 'Poppins',
                        ),
                  ),
                  child: navigator!,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
