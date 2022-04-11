import 'package:flutter/material.dart';
import 'package:deeptherapy/repository/user_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:deeptherapy/bloc/authentication_bloc.dart';
import 'package:deeptherapy/splash/splash.dart';
import 'package:deeptherapy/login/login_page.dart';
import 'package:deeptherapy/home/home.dart';
import 'package:deeptherapy/common/common.dart';

void main() {
  final userRepository = UserRepository();
  
  runApp(
      BlocProvider<AuthenticationBloc>(
        create: (context) {
          return AuthenticationBloc(
              userRepository: userRepository
          )..add(AppStarted());
        },
        child: App(userRepository: userRepository)),
      
  );
}

class App extends StatelessWidget {
  final UserRepository userRepository;

  App({Key? key, required this.userRepository})
      : assert(userRepository != null),
        super(key: key);

  @override
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
            return HomePage();
          }
          if (state is AuthenticationUnauthenticated) {
            return LoginPage(userRepository: userRepository,key: Key('login'));
          }
          return LoadingIndicator();
        },
      );
    // return Provider(create: (context) => BlocBuilder<AuthenticationBloc,AuthenticationState>, child:
     return  BlocProvider<AuthenticationBloc>(
    create: (context) => AuthenticationBloc(userRepository: userRepository),
    child:MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
        brightness: Brightness.dark,
      ),
      home: bloc
     ));
  }
}