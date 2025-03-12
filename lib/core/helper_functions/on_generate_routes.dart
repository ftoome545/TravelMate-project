import 'package:flutter/material.dart';
import 'package:travel_mate/features/auth/peresntation/view/signin_view.dart';
import 'package:travel_mate/features/auth/peresntation/view/signup_view.dart';
import 'package:travel_mate/features/home/peresntation/view/home_view.dart';
import 'package:travel_mate/features/onBoarding/peresntation/view/on_boarding_view.dart';
import 'package:travel_mate/features/splash/peresntation/view/splash_view.dart';
import 'package:travel_mate/features/splash/peresntation/view/welcome_view.dart';

Route<dynamic> onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());

    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (context) => const OnBoardingView());

    case WelcomeView.routeName:
      return MaterialPageRoute(builder: (context) => const WelcomeView());

    case SigninView.routeName:
      return MaterialPageRoute(builder: (context) => const SigninView());

    case SignupView.routeName:
      return MaterialPageRoute(builder: (context) => const SignupView());

    case HomeView.routeName:
      return MaterialPageRoute(builder: (context) => const HomeView());

    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
