import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trivia_app/constants/app_colors.dart';

import '../constants/app_routes.dart';
import '../screens/auth/login/login_screen.dart';
import '../screens/auth/loginSignup/login_signup_screen.dart';
import 'sample_feature/sample_item_details_view.dart';
import 'sample_feature/sample_item_list_view.dart';
import 'settings/settings_controller.dart';
import 'settings/settings_view.dart';

/// The Widget that configures your application.
class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
    required this.settingsController,
  }) : super(key: key);

  final SettingsController settingsController;

  @override
  Widget build(BuildContext context) {
    // Glue the SettingsController to the MaterialApp.
    //
    // The AnimatedBuilder Widget listens to the SettingsController for changes.
    // Whenever the user updates their settings, the MaterialApp is rebuilt.
    return AnimatedBuilder(
      animation: settingsController,
      builder: (BuildContext context, Widget? child) {
        return GetMaterialApp(
          // Providing a restorationScopeId allows the Navigator built by the
          // MaterialApp to restore the navigation stack when a user leaves and
          // returns to the app after it has been killed while running in the
          // background.

          // Provide the generated AppLocalizations to the MaterialApp. This
          // allows descendant Widgets to display the correct translations
          // depending on the user's locale.
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en', ''), // English, no country code
          ],

          // Use AppLocalizations to configure the correct application title
          // depending on the user's locale.
          //
          // The appTitle is defined in .arb files found in the localization
          // directory.
          onGenerateTitle: (BuildContext context) =>
              AppLocalizations.of(context)!.appTitle,

          // Define a light and dark color theme. Then, read the user's
          // preferred ThemeMode (light, dark, or system default) from the
          // SettingsController to display the correct theme.
          theme: ThemeData(
            scaffoldBackgroundColor: AppColors.grey5,
            textTheme: TextTheme(
              headline1: GoogleFonts.rubik()
                  .copyWith(fontSize: 32, fontWeight: FontWeight.bold),
              headline2: GoogleFonts.rubik()
                  .copyWith(fontSize: 28, fontWeight: FontWeight.bold),
              headline3: GoogleFonts.rubik()
                  .copyWith(fontSize: 24, fontWeight: FontWeight.w500),
              bodyText2: GoogleFonts.rubik().copyWith(fontSize: 16),
            ),
          ),
          // darkTheme: ThemeData.dark(),
          themeMode: settingsController.themeMode,
          debugShowCheckedModeBanner: false,
          // Define a function to handle named routes in order to support
          // Flutter web url navigation and deep linking.
          home: const LoginSignupScreen(),
          // home: const TopLevel(),
          // home: const LandingScreen(),
          // home: const UserProfile(),

          getPages: [
            // GetPage(
            //   name: AppRoutes.topLevelRoute,
            //   page: () => const TopLevel(),
            // ),
            // GetPage(
            //   name: AppRoutes.signUpRoute,
            //   page: () => const SignUpScreen(),
            //   title: 'Signup for an account',
            // ),
            GetPage(
              name: AppRoutes.loginRoute,
              page: () => const LoginScreen(),
              title: 'Login to your account',
            ),
            // GetPage(
            //   name: AppRoutes.verifyRoute,
            //   page: () => const VerificationScreen(),
            //   title: 'Verify your account',
            // ),
          ],
        );
      },
    );
  }
}
