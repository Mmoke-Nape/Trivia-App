import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trivia_app/constants/app_colors.dart';
import 'package:trivia_app/main_screen.dart';
import 'package:trivia_app/screens/Discover/discover_screen.dart';
import 'package:trivia_app/screens/auth/new%20password/new_password_screen.dart';
import 'package:trivia_app/screens/auth/reset%20password/reset_password.dart';
import 'package:trivia_app/screens/auth/signup/signup_screen_2.dart';
import 'package:trivia_app/screens/create%20quiz/create_quiz.dart';
import 'package:trivia_app/screens/home/home_screen.dart';
import 'package:trivia_app/screens/leaderboard%20screen/leaderboard_screen.dart';

import '../constants/app_routes.dart';
import '../screens/auth/login/login_screen.dart';
import '../screens/auth/loginSignup/login_signup_screen.dart';
import '../screens/auth/signup/signup_screen.dart';
import '../screens/create quiz/add question/add_question.dart';
import '../screens/create quiz/choose category/choose_category_screen.dart';
import 'settings/settings_controller.dart';

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
            primaryColor: AppColors.royalBlue,
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
          home: const MainScreen(),
          // home: const LoginSignupScreen(),
          // home: const TopLevel(),
          // home: const LandingScreen(),
          // home: const UserProfile(),

          getPages: [
            //Authentication routes
            GetPage(
              name: AppRoutes.loginRoute,
              page: () => const LoginScreen(),
              title: 'Login to your account',
            ),
            GetPage(
              name: AppRoutes.signupRoute,
              page: () => const SignupScreen(),
              title: 'Signup for an account',
            ),
            GetPage(
              name: AppRoutes.signup2Route,
              page: () => const SignupScreen2(),
              title: 'Signup for an account',
            ),
            GetPage(
              name: AppRoutes.resetPasswordRoute,
              page: () => const ResetPasswordScreen(),
              title: 'Verify your account',
            ),
            GetPage(
              name: AppRoutes.newPasswordRoute,
              page: () => const NewPasswordScreen(),
              title: 'Verify your account',
            ),

            //MAIN SCREEN BOTTOM NAVIGATION ROUTES
            GetPage(
              name: AppRoutes.mainScreenRoute,
              page: () => const MainScreen(),
            ),
            GetPage(
              name: AppRoutes.homeRoute,
              page: () => const HomeScreen(),
            ),
            GetPage(
              name: AppRoutes.discoverRoute,
              page: () => const DiscoverScreen(),
            ),
            GetPage(
              name: AppRoutes.createQuizRoute,
              page: () => const CreateQuizScreen(),
            ),
            GetPage(
              name: AppRoutes.leaderBoardRoute,
              page: () => const LeaderboardScreen(),
            ),
            GetPage(
              name: AppRoutes.mainScreenRoute,
              page: () => const MainScreen(),
            ),
            GetPage(
              name: AppRoutes.chooseCategoryRoute,
              page: () => const ChooseCategoryScreen(),
            ),
            GetPage(
              name: AppRoutes.addQuestionsRoute,
              page: () => const AddQuestionsScreen(),
            ),
          ],
        );
      },
    );
  }
}
