import 'package:flutter/material.dart';

class LoginDoc extends StatelessWidget {
  const LoginDoc({ Key? key }) : super(key: key);

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
          Text("Login" , 
          style:TextStyle(fontWeight: FontWeight.bold  ,fontFamily: 'SourceSansPro-Black',
color: Colors.black54,fontSize: 25),
          textAlign: TextAlign.center),
          
        ],
),
      ),





  
      Container(width: 420,padding: EdgeInsets.all(16), child: Column(children: [
                  TextFormField(decoration: InputDecoration(labelText: 'Email'),
                   keyboardType: TextInputType.name), TextFormField(obscureText: true,decoration: InputDecoration(labelText: 'Enter Password'),
                

                   keyboardType: TextInputType.name,),
                   SizedBox(height: 35),
                   new ElevatedButton( style: ElevatedButton.styleFrom(fixedSize: Size(420, 35),shape:
                            RoundedRectangleBorder(
                               borderRadius : BorderRadius.circular(10),
                               side:BorderSide(color: Colors.blue),
                            
                      )),onPressed: (){}, 
             child: new Text("Confirm"),)]
                   )
                   ),
                    Row(
              children: <Widget>[
                const Text("Don't have an account?"),
                TextButton(
                  child: const Text(
                    'Sign up',
                    style: TextStyle(fontSize: 15),
                  ),
                  onPressed: () {
                   
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