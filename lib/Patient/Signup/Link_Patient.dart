import 'package:flutter/material.dart';

class LinkPatient extends StatelessWidget {
  const LinkPatient({ Key? key }) : super(key: key);
  static const route_name = "/LinkPatient";
  @override
  Widget build(BuildContext context) {
    String ptext = "";
    return Scaffold(
      body: Column(children: [Expanded(child: Image.asset("assets/images/deep.png"),),Container(
        width: 500,
        padding: EdgeInsets.all(20),
       child: Column(children: [Center(child: new Text("Enter Code", style: TextStyle(fontSize: 20,),)),new TextField(onChanged: (String txt)  { () {
            ptext = txt;}; }
            ,decoration: InputDecoration(fillColor: Colors.blue, hintText: "XXXX-XXXX-XXXX-XXXX",
             labelText: "Access Code"),
             ),
             new Text(ptext), new ElevatedButton(onPressed: (){}, 
             child: new Text("Enter")),
             ]))
             ,]),
             // verify code in server and call for success widget or fail widget.
      
    );
  }
}