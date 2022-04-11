import 'package:flutter/material.dart';
import 'SignupDoc2.dart';

class SignUpDoc1 extends StatelessWidget {
  const SignUpDoc1({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          Text("Sign Up" , 
          style:TextStyle(fontWeight: FontWeight.bold  ,fontFamily: 'SourceSansPro-Black',
color: Colors.black54,fontSize: 25),
          textAlign: TextAlign.center),
          
        ],
),
      ),





  
      Container(width: 420,padding: EdgeInsets.all(16), child: Column(children: [
                  TextFormField(decoration: InputDecoration(labelText: 'Username'),
                   keyboardType: TextInputType.name), TextFormField(obscureText: true,decoration: InputDecoration(labelText: 'email'),
                   keyboardType: TextInputType.name), TextFormField(obscureText: true,decoration: InputDecoration(labelText: 'Create Password'),
                    keyboardType: TextInputType.name), TextFormField(obscureText: true,decoration: InputDecoration(labelText: 'Confirm Password'),

                   keyboardType: TextInputType.name,),
                   SizedBox(height: 35),
                   new ElevatedButton( style: ElevatedButton.styleFrom(fixedSize: Size(420, 35),shape:
                            RoundedRectangleBorder(
                               borderRadius : BorderRadius.circular(10),
                               side:BorderSide(color: Colors.blue),
                            
                      )),onPressed: (){
                         
            Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const SignupDoc2()),
  );
                      }, 
             child: new Text("Confirm"),)]
                   )
                   ),
                    Row(
              children: <Widget>[
                const Text('Already have an account ?'),
                TextButton(
                  child: const Text(
                    'Login',
                    style: TextStyle(fontSize: 15),
                  ),
                  onPressed: () {
                    //signup screen
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
      ],
      )
      ),

      );
      
      
    
  }
}