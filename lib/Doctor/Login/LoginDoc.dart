import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:deeptherapy/login/bloc/login_bloc.dart';

class LoginForm extends StatefulWidget {
  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _userController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _onLoginButtonPressed() {
      BlocProvider.of<LoginBloc>(context).add(LoginButtonPressed(
        username: _userController.text,
        password: _passwordController.text,
      ));
    }

    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state is LoginFaliure) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('${state.error}'),
            backgroundColor: Colors.red,
          ));
        }
      },
      child: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          return Scaffold(
      

 body: Container( margin: const EdgeInsets.only(top: 20),

   child:
 Column(
    children: [Expanded(child: Image.asset("../assets/images/deep.png",
width: 200,height: 200,
alignment: Alignment.bottomCenter,   
 


      ),
      
     ),
      Padding(
        padding: const EdgeInsets.all(10),
        child: Column(children: [
          Text("Login" , 
          style:TextStyle(fontWeight: FontWeight.bold  ,fontFamily: 'SourceSansPro-Black',
color: Colors.black54,fontSize: 25),
          textAlign: TextAlign.center),
          
        ],
),
      ),





  
      Container(width: 420,padding: EdgeInsets.all(16), child: Column(children: [
                  TextFormField(decoration: InputDecoration(labelText: 'Email'),
                   keyboardType: TextInputType.name, controller: _userController,), TextFormField(controller: _passwordController, obscureText: true,decoration: InputDecoration(labelText: 'Enter Password'),
                

                   keyboardType: TextInputType.name,),
                   SizedBox(height: 35),
                   new ElevatedButton( style: ElevatedButton.styleFrom(fixedSize: Size(420, 35),shape:
                            RoundedRectangleBorder(
                               borderRadius : BorderRadius.circular(10),
                               side:BorderSide(color: Colors.blue),
                            
                      )),onPressed: state is! LoginLoading
                             ? _onLoginButtonPressed
                            : null, 
             child: new Text("Confirm"),)]
                   )
                   ),Container(
                      child: state is LoginLoading
                          ? CircularProgressIndicator()
                          : null,
                    ),
                    Row(
              children: <Widget>[
                const Text("Don't have an account?"),
                TextButton(
                  child: const Text(
                    'Sign up',
                    style: TextStyle(fontSize: 15),
                  ),
                  onPressed: state is! LoginLoading
                              ? _onLoginButtonPressed
                              : null,
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
      ],
      )
      ),

      );
        },
      ),
    );
  }
}