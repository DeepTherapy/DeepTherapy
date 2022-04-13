import 'dart:js';

import 'package:deeptherapy/Doctor/Login/LoginDoc.dart';
import 'package:deeptherapy/Patient/Signup/Link_Patient.dart';
import 'package:deeptherapy/Doctor/Signup/Signup-Signin.dart';
import 'package:deeptherapy/Welcome.dart';
import 'Patient/Signup/create_profile_P.dart';
import  'Doctor/Login/LoginDoc.dart';
import 'package:flutter/material.dart';
import 'repository/user_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/authentication_bloc.dart';
import 'splash/splash.dart';
import 'common/loading_indicator.dart';
import 'Patient/home/home.dart';
void main() {
  final userRepository = UserRepository();
  
  runApp(Patient());}
  // runApp takes as argument Homescreen for patient side and BlocProvider for Doctor Side
 class Patient extends StatelessWidget{

 @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Login App',theme: ThemeData(
        primaryColor: Colors.black,),
        home: HomeScreen(),);
  //     BlocProvider<AuthenticationBloc>(
  //       create: (context) {
  //         return AuthenticationBloc(
  //             userRepository: userRepository
  //         )..add(AppStarted());
  //       },
  //       child: MyApp(userRepository: userRepository)),
      
  // );
}
 }
class MyApp extends StatelessWidget {
  final UserRepository userRepository;

  MyApp({Key? key, required this.userRepository})
      : assert(userRepository != null),
        super(key: key);
  // This widget is the root of your application.
  Widget build (BuildContext context) {
    var bloc = BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
          print(state);
          print("hi");
          print(context);
          if (state is AuthenticationUnintialized) {
            return SplashPage();
          }
          if (state is AuthenticationAuthenticated) {
            return SplashPage();
          }
          if (state is AuthenticationUnauthenticated) {
            return Welcome();
          }
          return LoadingIndicator();
        },
      );
    // return Provider(create: (context) => BlocBuilder<AuthenticationBloc,AuthenticationState>, child:
     return  BlocProvider<AuthenticationBloc>(
    create: (context) => AuthenticationBloc(userRepository: userRepository),
    child:MaterialApp(
      
      home: bloc
     ));
  }
}

