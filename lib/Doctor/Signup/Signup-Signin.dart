import 'package:deeptherapy/repository/user_repository.dart';
import 'package:flutter/material.dart';
import '../Login/login_page.dart';
import 'SignupDoc1.dart';
import 'package:deeptherapy/bloc/authentication_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginSignUp extends StatelessWidget {
  final UserRepository userRepository;
  LoginSignUp({ Key? key ,required this.userRepository}) : super(key: key);
  

  static const route_name = "/welcome";
  @override
  Widget build(BuildContext context) {
    String ptext = "";
    return BlocProvider<AuthenticationBloc>(
    create: (context) => AuthenticationBloc(userRepository: userRepository),
    child: Scaffold(
      
      body:Column(children: [Expanded(child: Image.asset("../assets/images/deep.png"
      ),
      
     ),
      Padding(
        padding: const EdgeInsets.all(10),
        child: Column(children: [
          Text("Welcome to DeepTherapy" , 
          style:TextStyle(fontWeight: FontWeight.bold  ,fontFamily: 'SourceSansPro-Black',
color: Colors.black54,fontSize: 25),
          textAlign: TextAlign.center),
          
        ],),
      ),
      

       Padding(
         padding: const EdgeInsets.all(10),
         child: Container(  
                  width: 400,
                  height: 90,
                  padding: EdgeInsets.all(10),
                child:ElevatedButton(onPressed: () 
                   {
            Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => LoginPage(key: Key("login"),userRepository: userRepository,)),
  );
         
                },
                child: 
                Text("Login",
  style:TextStyle(
    color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,
    ),
    ),
  style: ButtonStyle(
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.0),
      ),
      ),
  backgroundColor: MaterialStateProperty.all(Colors.blue[700]),  
  ),
  ),
  ),
       ),
        Padding(
         padding: const EdgeInsets.all(10),

 child: Container(  
                width: 400,
                height: 90,
                padding: EdgeInsets.all(10),
              child:ElevatedButton(onPressed: () {
                 
            Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const SignUpDoc1()),
  );
         
                
              },
              child: 
              Text("Sign Up",
  style:TextStyle(
    color: Colors.blue[700],fontSize: 20,fontWeight: FontWeight.bold,
    ),
    ),
  style: ButtonStyle(
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.0),
      side: BorderSide(color: Colors.blue),

      ),
      ),
  backgroundColor: MaterialStateProperty.all(Colors.white),  
  ),
  ),
  )),
  









    ])));
  }
}