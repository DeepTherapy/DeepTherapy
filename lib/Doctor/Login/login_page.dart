import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:deeptherapy/repository/user_repository.dart';

import 'package:deeptherapy/bloc/authentication_bloc.dart';
import 'package:deeptherapy/login/bloc/login_bloc.dart';
import 'LoginDoc.dart';

class LoginPage extends StatelessWidget {
  final UserRepository userRepository;

  LoginPage({required Key key, required this.userRepository})
      : assert(userRepository != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) {
          return LoginBloc(
            authenticationBloc: BlocProvider.of<AuthenticationBloc>(context),
            userRepository: userRepository
          );
        },
        child: LoginForm(),
      
    );}
    
  }
