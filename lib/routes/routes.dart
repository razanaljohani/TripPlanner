import 'package:get/get.dart';
import 'package:trip_planner/view/screens/auth/signup_screen.dart';

import '../logic/bindings/auth_bindings.dart';
import '../view/screens/HomeScreen.dart';
import '../view/screens/auth/login_screen.dart';
import '../view/screens/WelcomeScreen.dart';
import '../view/screens/main_screen.dart';

class AppRoutes {
  //intialRoute
  static const welcome = Routes.welcomescreen;
  static const MainScreens = Routes.mainScreen;
  static const signup = Routes.signUpScreen;

  //getPage

  static final routes = [
    //  GetPage(name: Routes.welcomescreen, page: () => MyHomePage()),
    GetPage(
        name: Routes.welcomescreen,
        page: () => WelcomeScreen(),
        binding: AuthBiniding()),
    GetPage(
        name: Routes.loginScreen,
        page: () => LoginScreen(),
        binding: AuthBiniding()),
    GetPage(
        name: Routes.signUpScreen,
        page: () => SignUpScreen(),
        binding: AuthBiniding()),
    GetPage(
        name: Routes.homeScreen,
        page: () => MyHomePage(),
        binding: AuthBiniding()),

    // GetPage(
    //     name: Routes.forgetpasswordscreen,
    //     page: () => ForgetPasswordScreen(),
    //     binding: AuthBiniding()),
    GetPage(
        name: Routes.mainScreen,
        page: () => MainScreen(),
        bindings: [AuthBiniding()]),
  ];
}

class Routes {
  static const welcomescreen = "/WelcomeScreen";
  static const homeScreen = "/MyHomePage";

  static const loginScreen = "/LoginScreen";
  static const signUpScreen = "/sginUpScreen";
  static const forgetpasswordscreen = '/forgetpasswordscreen';
  static const mainScreen = '/mainScreen';
  static const cartScreen = '/cartScreen';
  static const paymentScreen = '/paymentScreen';
}
