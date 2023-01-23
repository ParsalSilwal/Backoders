import 'package:travelapp/presentation/discovery_container_screen/discovery_container_screen.dart';
import 'package:travelapp/presentation/discovery_container_screen/binding/discovery_container_binding.dart';
import 'package:travelapp/presentation/splash_screen/splash_screen.dart';
import 'package:travelapp/presentation/splash_screen/binding/splash_binding.dart';
import 'package:travelapp/presentation/openning_screen/openning_screen.dart';
import 'package:travelapp/presentation/openning_screen/binding/openning_binding.dart';
import 'package:travelapp/presentation/sign_up_one_screen/sign_up_one_screen.dart';
import 'package:travelapp/presentation/sign_up_one_screen/binding/sign_up_one_binding.dart';
import 'package:travelapp/presentation/sign_up_two_screen/sign_up_two_screen.dart';
import 'package:travelapp/presentation/sign_up_two_screen/binding/sign_up_two_binding.dart';
import 'package:travelapp/presentation/log_in_two_screen/log_in_two_screen.dart';
import 'package:travelapp/presentation/log_in_two_screen/binding/log_in_two_binding.dart';
import 'package:travelapp/presentation/log_in_with_email_screen/log_in_with_email_screen.dart';
import 'package:travelapp/presentation/log_in_with_email_screen/binding/log_in_with_email_binding.dart';
import 'package:travelapp/presentation/log_in_with_email_enter_a_code_screen/log_in_with_email_enter_a_code_screen.dart';
import 'package:travelapp/presentation/log_in_with_email_enter_a_code_screen/binding/log_in_with_email_enter_a_code_binding.dart';
import 'package:travelapp/presentation/log_in_with_email_wrong_code_screen/log_in_with_email_wrong_code_screen.dart';
import 'package:travelapp/presentation/log_in_with_email_wrong_code_screen/binding/log_in_with_email_wrong_code_binding.dart';
import 'package:travelapp/presentation/log_in_with_email_enter_a_code_two_screen/log_in_with_email_enter_a_code_two_screen.dart';
import 'package:travelapp/presentation/log_in_with_email_enter_a_code_two_screen/binding/log_in_with_email_enter_a_code_two_binding.dart';
import 'package:travelapp/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:travelapp/presentation/forgot_password_screen/binding/forgot_password_binding.dart';
import 'package:travelapp/presentation/forgot_password_code_screen/forgot_password_code_screen.dart';
import 'package:travelapp/presentation/forgot_password_code_screen/binding/forgot_password_code_binding.dart';
import 'package:travelapp/presentation/reset_password_screen/reset_password_screen.dart';
import 'package:travelapp/presentation/reset_password_screen/binding/reset_password_binding.dart';
import 'package:travelapp/presentation/password_changed_screen/password_changed_screen.dart';
import 'package:travelapp/presentation/password_changed_screen/binding/password_changed_binding.dart';
import 'package:travelapp/presentation/introtwentytwo_screen/introtwentytwo_screen.dart';
import 'package:travelapp/presentation/introtwentytwo_screen/binding/introtwentytwo_binding.dart';
import 'package:travelapp/presentation/introtwentythree_screen/introtwentythree_screen.dart';
import 'package:travelapp/presentation/introtwentythree_screen/binding/introtwentythree_binding.dart';
import 'package:travelapp/presentation/attraction_screen/attraction_screen.dart';
import 'package:travelapp/presentation/attraction_screen/binding/attraction_binding.dart';
import 'package:travelapp/presentation/settings_screen/settings_screen.dart';
import 'package:travelapp/presentation/settings_screen/binding/settings_binding.dart';
import 'package:travelapp/presentation/profile_one_screen/profile_one_screen.dart';
import 'package:travelapp/presentation/profile_one_screen/binding/profile_one_binding.dart';
import 'package:travelapp/presentation/initial_screen/initial_screen.dart';
import 'package:travelapp/presentation/initial_screen/binding/initial_binding.dart';
import 'package:travelapp/presentation/add_tour_one_screen/add_tour_one_screen.dart';
import 'package:travelapp/presentation/add_tour_one_screen/binding/add_tour_one_binding.dart';
import 'package:travelapp/presentation/home_one_screen/home_one_screen.dart';
import 'package:travelapp/presentation/home_one_screen/binding/home_one_binding.dart';
import 'package:travelapp/presentation/tour_details_one_screen/tour_details_one_screen.dart';
import 'package:travelapp/presentation/tour_details_one_screen/binding/tour_details_one_binding.dart';
import 'package:travelapp/presentation/edit_tour_one_screen/edit_tour_one_screen.dart';
import 'package:travelapp/presentation/edit_tour_one_screen/binding/edit_tour_one_binding.dart';
import 'package:travelapp/presentation/add_tour_two_screen/add_tour_two_screen.dart';
import 'package:travelapp/presentation/add_tour_two_screen/binding/add_tour_two_binding.dart';
import 'package:travelapp/presentation/home_two_screen/home_two_screen.dart';
import 'package:travelapp/presentation/home_two_screen/binding/home_two_binding.dart';
import 'package:travelapp/presentation/tour_details_two_screen/tour_details_two_screen.dart';
import 'package:travelapp/presentation/tour_details_two_screen/binding/tour_details_two_binding.dart';
import 'package:travelapp/presentation/edit_tour_two_screen/edit_tour_two_screen.dart';
import 'package:travelapp/presentation/edit_tour_two_screen/binding/edit_tour_two_binding.dart';
import 'package:travelapp/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:travelapp/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String discoveryPage = '/discovery_page';

  static const String discoveryContainerScreen = '/discovery_container_screen';

  static const String splashScreen = '/splash_screen';

  static const String openningScreen = '/openning_screen';

  static const String signUpOneScreen = '/sign_up_one_screen';

  static const String signUpTwoScreen = '/sign_up_two_screen';

  static const String logInTwoScreen = '/log_in_two_screen';

  static const String logInWithEmailScreen = '/log_in_with_email_screen';

  static const String logInWithEmailEnterACodeScreen =
      '/log_in_with_email_enter_a_code_screen';

  static const String logInWithEmailWrongCodeScreen =
      '/log_in_with_email_wrong_code_screen';

  static const String logInWithEmailEnterACodeTwoScreen =
      '/log_in_with_email_enter_a_code_two_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String forgotPasswordCodeScreen = '/forgot_password_code_screen';

  static const String resetPasswordScreen = '/reset_password_screen';

  static const String passwordChangedScreen = '/password_changed_screen';

  static const String introtwentytwoScreen = '/introtwentytwo_screen';

  static const String introtwentythreeScreen = '/introtwentythree_screen';

  static const String attractionScreen = '/attraction_screen';

  static const String profilePage = '/profile_page';

  static const String settingsScreen = '/settings_screen';

  static const String profileOneScreen = '/profile_one_screen';

  static const String initialScreen = '/initial_screen';

  static const String addTourOneScreen = '/add_tour_one_screen';

  static const String homeOneScreen = '/home_one_screen';

  static const String tourDetailsOneScreen = '/tour_details_one_screen';

  static const String editTourOneScreen = '/edit_tour_one_screen';

  static const String addTourTwoScreen = '/add_tour_two_screen';

  static const String homeTwoScreen = '/home_two_screen';

  static const String tourDetailsTwoScreen = '/tour_details_two_screen';

  static const String editTourTwoScreen = '/edit_tour_two_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: discoveryContainerScreen,
      page: () => DiscoveryContainerScreen(),
      bindings: [
        DiscoveryContainerBinding(),
      ],
    ),
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: openningScreen,
      page: () => OpenningScreen(),
      bindings: [
        OpenningBinding(),
      ],
    ),
    GetPage(
      name: signUpOneScreen,
      page: () => SignUpOneScreen(),
      bindings: [
        SignUpOneBinding(),
      ],
    ),
    GetPage(
      name: signUpTwoScreen,
      page: () => SignUpTwoScreen(),
      bindings: [
        SignUpTwoBinding(),
      ],
    ),
    GetPage(
      name: logInTwoScreen,
      page: () => LogInTwoScreen(),
      bindings: [
        LogInTwoBinding(),
      ],
    ),
    GetPage(
      name: logInWithEmailScreen,
      page: () => LogInWithEmailScreen(),
      bindings: [
        LogInWithEmailBinding(),
      ],
    ),
    GetPage(
      name: logInWithEmailEnterACodeScreen,
      page: () => LogInWithEmailEnterACodeScreen(),
      bindings: [
        LogInWithEmailEnterACodeBinding(),
      ],
    ),
    GetPage(
      name: logInWithEmailWrongCodeScreen,
      page: () => LogInWithEmailWrongCodeScreen(),
      bindings: [
        LogInWithEmailWrongCodeBinding(),
      ],
    ),
    GetPage(
      name: logInWithEmailEnterACodeTwoScreen,
      page: () => LogInWithEmailEnterACodeTwoScreen(),
      bindings: [
        LogInWithEmailEnterACodeTwoBinding(),
      ],
    ),
    GetPage(
      name: forgotPasswordScreen,
      page: () => ForgotPasswordScreen(),
      bindings: [
        ForgotPasswordBinding(),
      ],
    ),
    GetPage(
      name: forgotPasswordCodeScreen,
      page: () => ForgotPasswordCodeScreen(),
      bindings: [
        ForgotPasswordCodeBinding(),
      ],
    ),
    GetPage(
      name: resetPasswordScreen,
      page: () => ResetPasswordScreen(),
      bindings: [
        ResetPasswordBinding(),
      ],
    ),
    GetPage(
      name: passwordChangedScreen,
      page: () => PasswordChangedScreen(),
      bindings: [
        PasswordChangedBinding(),
      ],
    ),
    GetPage(
      name: introtwentytwoScreen,
      page: () => IntrotwentytwoScreen(),
      bindings: [
        IntrotwentytwoBinding(),
      ],
    ),
    GetPage(
      name: introtwentythreeScreen,
      page: () => IntrotwentythreeScreen(),
      bindings: [
        IntrotwentythreeBinding(),
      ],
    ),
    GetPage(
      name: attractionScreen,
      page: () => AttractionScreen(),
      bindings: [
        AttractionBinding(),
      ],
    ),
    GetPage(
      name: settingsScreen,
      page: () => SettingsScreen(),
      bindings: [
        SettingsBinding(),
      ],
    ),
    GetPage(
      name: profileOneScreen,
      page: () => ProfileOneScreen(),
      bindings: [
        ProfileOneBinding(),
      ],
    ),
    GetPage(
      name: initialScreen,
      page: () => InitialScreen(),
      bindings: [
        InitialBinding(),
      ],
    ),
    GetPage(
      name: addTourOneScreen,
      page: () => AddTourOneScreen(),
      bindings: [
        AddTourOneBinding(),
      ],
    ),
    GetPage(
      name: homeOneScreen,
      page: () => HomeOneScreen(),
      bindings: [
        HomeOneBinding(),
      ],
    ),
    GetPage(
      name: tourDetailsOneScreen,
      page: () => TourDetailsOneScreen(),
      bindings: [
        TourDetailsOneBinding(),
      ],
    ),
    GetPage(
      name: editTourOneScreen,
      page: () => EditTourOneScreen(),
      bindings: [
        EditTourOneBinding(),
      ],
    ),
    GetPage(
      name: addTourTwoScreen,
      page: () => AddTourTwoScreen(),
      bindings: [
        AddTourTwoBinding(),
      ],
    ),
    GetPage(
      name: homeTwoScreen,
      page: () => HomeTwoScreen(),
      bindings: [
        HomeTwoBinding(),
      ],
    ),
    GetPage(
      name: tourDetailsTwoScreen,
      page: () => TourDetailsTwoScreen(),
      bindings: [
        TourDetailsTwoBinding(),
      ],
    ),
    GetPage(
      name: editTourTwoScreen,
      page: () => EditTourTwoScreen(),
      bindings: [
        EditTourTwoBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => DiscoveryContainerScreen(),
      bindings: [
        DiscoveryContainerBinding(),
      ],
    )
  ];
}
