import 'package:flutter/widgets.dart';
import 'package:flutter1/screens/cart/cart_screen.dart';
import 'package:flutter1/screens/complete_profile/complete_profile_screen.dart';
import 'package:flutter1/screens/details/details_screen.dart';
import 'package:flutter1/screens/forgot_password/forgot_password_screen.dart';
import 'package:flutter1/screens/home/home_screen.dart';
import 'package:flutter1/screens/login_success/login_success_screen.dart';
import 'package:flutter1/screens/otp/otp_screen.dart';
import 'package:flutter1/screens/profile/profile_screen.dart';
import 'package:flutter1/screens/sing_in/sing_in_screen.dart';
import 'package:flutter1/screens/sing_up/sing_up_screen.dart';
import 'package:flutter1/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SingInScreen.routeName: (context) => SingInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SingUpScreen.routeName: (context) => SingUpScreen(),
  OtpScreen.routerName: (context) => OtpScreen(),
  CompleteProfileScreen.routerName: (context) => CompleteProfileScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routesName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen()
};
