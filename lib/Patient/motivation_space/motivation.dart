
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:deeptherapy/Patient/quote_space/QuoteSpace.dart';
import 'package:deeptherapy/Patient/widgets/bottom_nav_bar.dart';
import 'package:deeptherapy/Patient/widgets/constants.dart';


class motivation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; //this gonna give us total height and with of our device
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      appBar: 
       AppBar(
         backgroundColor: Colors.white,elevation: 0,
         title: Text("Motivation Space", style: TextStyle(color: Colors.black87,fontWeight: FontWeight.w700),),
        leading: IconButton(
            icon: const Icon(Icons.arrow_back,size: 35,color:kBlueLight,), onPressed: () {  },),
        actions: <Widget>[
         Padding(
           padding: const EdgeInsets.all(10.0),
           child: CircleAvatar(backgroundColor: Colors.white,
    radius: 35.0,
    child: ClipRRect(
      
        child: Image.asset("assets/images/user.png"),
        borderRadius: BorderRadius.circular(30.0),
   )),
         ),
        ],
        

    ),
    
  body:
   Container(
          decoration: new BoxDecoration(color:kBlueLight),
        child: 
        Padding(
          padding: const EdgeInsets.only(top:150),
          child: Column(children: [
           new Center(
              child: new RichText(
                 
                         text: TextSpan(
                   /*defining default style is optional */
                  children: 
                  <TextSpan>[
                    TextSpan(text:'   Your ', style: TextStyle(color:Colors.white,fontSize: 40,fontWeight: FontWeight.bold)),
                    TextSpan(text:'daily\n', style: TextStyle(color:pink,fontSize: 40,fontWeight: FontWeight.bold)),
                    TextSpan(text:'   Inspiration \n', style: TextStyle(color:Colors.white,fontSize:40,fontWeight: FontWeight.bold,)),
                    TextSpan(text:'Life is abundant, and life \n is beautiful.', style: TextStyle(color:Colors.white,fontSize:23,fontWeight: FontWeight.w600,))

                    

                  ],
                    ),
                         ),
                  
                        
           
              ),
 Center(child: Column(children: <Widget>[
              Padding(padding: const EdgeInsets.only(top:60.0),
      child:Container( 
        decoration:
          BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.transparent, offset: Offset(0, 4), blurRadius: 5.0)
          ],
         
        ),
                child: ElevatedButton(child: Text('Quotes',style:TextStyle(fontWeight: FontWeight.w800,fontSize: 23)),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color(0xFFE7C8AC)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  minimumSize: MaterialStateProperty.all(Size(330, 55)),
                  
            
                     
                      ),
            onPressed: () {
                Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return QuoteApp();
                              }),
                            );
            },),
              ),

      
      
             
              
          ),
          Padding(padding: const EdgeInsets.only(top:14.0),
      child:Container( 
        decoration:
          BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.transparent, offset: Offset(0, 4), blurRadius: 5.0)
          ],
         
        ),
                child: ElevatedButton(child: Text('Success stories',style:TextStyle(fontWeight: FontWeight.w800,fontSize: 23)),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color(0xFFE7C8AC)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  minimumSize: MaterialStateProperty.all(Size(330, 55)),
                  
            
                     
                      ),
            onPressed: () {
                
            },),
              ),

      
      
             
              
          ),
          ],),
        ),]

       

  ))),
  
  );
    
    
    
    
    
  }}






         
          
             
        