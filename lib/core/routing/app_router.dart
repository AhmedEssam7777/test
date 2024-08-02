import 'package:completet/core/routing/routes.dart';
import 'package:completet/features/login/ui/login_screen.dart';
import 'package:completet/features/onboarding/onboarding_scree.dart';
import 'package:flutter/material.dart';

class AppRouter{
  Route getRoute(RouteSettings settings){
   switch(settings.name){
     case Routes.onBoardingScreen:
       return MaterialPageRoute(builder: (context) => OnboardingScreen());
     case Routes.loginScreen:
       return MaterialPageRoute(builder: (context) => LoginScreen());  
     default:
       return MaterialPageRoute(builder: (context) => Scaffold(
         body: Center(child: Text('No route defined for ${settings.name}')),
       ));
   }
  }
}