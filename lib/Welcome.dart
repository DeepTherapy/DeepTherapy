import 'package:deeptherapy/repository/user_repository.dart';
import 'package:flutter/material.dart';
import 'Doctor/Signup/Signup-Signin.dart';
import 'splash/splash.dart';

class Welcome  extends StatelessWidget {
  
  const Welcome ({ Key? key }) : super(key: key);
  

  static const route_name = "/deep";
  @override
  Widget build(BuildContext context) {
    String ptext = "";
    return Scaffold(
      
      body: Column(children: [Expanded(child: Image.asset("../assets/images/deep.png"
      ),
      
      ),
      Padding(
        padding: const EdgeInsets.only(top:15),
        child: Container (child : Column(children: [
          Text("Boost Your treatment\n Have a better life style" , 
          style:TextStyle(fontWeight: FontWeight.bold  ,fontFamily: 'SourceSansPro-Black',
color: Colors.black54,fontSize: 29),
          textAlign: TextAlign.center),
          
        ],)),
      ),
      Padding(
        padding: const EdgeInsets.only(top:75),
        child: Container(
          
     

         child: Column(children: 
                [ListTile(
            title: Row(
              children: <Widget>[
                Expanded(child:  Container(
     child:ElevatedButton(onPressed: () {},
         child:Text("Patient",
  style:TextStyle(
    color: Colors.white,fontSize: 20
    ),
    ),
 style: ElevatedButton.styleFrom (
   primary: Colors.blue[700],
        fixedSize: const Size(160, 60),
   shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(50),
     side: BorderSide(color: Colors.blue),
)),  
  ),
  ),
  ),



  Padding(
    padding: const EdgeInsets.all(23),
    child: Container(
         child:ElevatedButton(onPressed: () {
            Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => LoginSignUp(userRepository: UserRepository(),)),
  );
         },
           child:Text("Psychotherapist",
    style:TextStyle(
        color: Colors.blue[700],fontSize: 20
        ),
        ),
 style: ElevatedButton.styleFrom (
     primary: Colors.white,
          fixedSize: const Size(180, 60),
     shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
         side: BorderSide(color: Colors.blue),
)),  
    ),
    ),
  ),
  












              ],
            ),
          ),
               ])),
      )
             ,]),
      
    );
  }
}