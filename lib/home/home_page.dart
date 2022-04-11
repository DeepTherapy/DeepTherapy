import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:deeptherapy/bloc/authentication_bloc.dart';
import 'package:deeptherapy/repository/user_repository.dart';
class HomePage extends StatelessWidget {
  final userRepository = UserRepository();
  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<AuthenticationBloc>(context);
    return BlocProvider<AuthenticationBloc>(
    create: (context) => AuthenticationBloc(userRepository: userRepository),
    child:Scaffold(
      appBar: AppBar(
        title: Text('Home | Home Hub'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(padding: EdgeInsets.only(left: 30.0),
            child: Text(
              'Welcome',
              style: TextStyle(
                fontSize: 24.0,
              ),
            ),),
            Padding(
              padding: EdgeInsets.fromLTRB(34.0, 20.0, 0.0, 0.0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.85,
                height: MediaQuery.of(context).size.width * 0.16,
                child: ElevatedButton(
                  child: Text(
                    'Logout',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  onPressed: () {
                    bloc
                        .add(LoggedOut());
                  },
                  style: ElevatedButton.styleFrom(shape: StadiumBorder(
                    side: BorderSide(
                      color: Colors.black,
                      width: 2,
                    ),
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
     ) );
  }
}