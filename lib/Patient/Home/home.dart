import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:deeptherapy/Patient/widgets/bottom_nav_bar.dart';
import 'package:deeptherapy/Patient/widgets/category_card.dart';
import 'package:deeptherapy/Patient/widgets/constants.dart';
import '../motivation_space/motivation.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; //this gonna give us total height and with of our device
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      appBar: 
       AppBar(
         backgroundColor: Colors.white,elevation: 0,
        leading: IconButton(
            icon: const Icon(Icons.notifications, size: 35,color:kBlueLight,), onPressed: () {  },),
        actions: <Widget>[
         Padding(
           padding: const EdgeInsets.all(10.0),
           child: CircleAvatar(backgroundColor: Colors.white,
    radius: 35.0,
    child: ClipRRect(
      
        child: Image.asset("lib/assets/images/user.png"),
        borderRadius: BorderRadius.circular(30.0),
    )),
         ), 
        ],
        ),
      body: Stack(
        children: <Widget>[
       
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                 RichText(
                   text: TextSpan(
            text: 'Hello',
            style: TextStyle(color:Color(0xFFFFDDBE),fontSize: 27,fontWeight: FontWeight.bold), /*defining default style is optional */
            children: <TextSpan>[
              TextSpan(
                  text: ' ,Chris', style: TextStyle(color:kTextColor,fontSize: 27,fontWeight: FontWeight.bold))
            ],
              ),
                   ),
             
                  Text(
                    "We’ve missed you.  Have a look at ",
                    style:TextStyle(color: kBlueColor,fontSize: 20,fontWeight: FontWeight.w600 , height: 2.2), 
                        
                  ),
                  Text(
                    "our fresh new content just for you! ",
                    style:TextStyle(color: kBlueColor,fontSize: 20,fontWeight: FontWeight.w600 ), 
                        
                  ),
                  SizedBox(width: 50, height: 15,),
                 
                  Flexible(child: GridView.count(
                          clipBehavior: Clip.antiAlias,
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,      
                          children:
                           <Widget>[
                            
                            CategoryCard(
                              
                              title: "motivation space",
                              Src: "lib/assets/images/motivation.png",
                              color: Colors.white,
                              press: () {
                                Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return motivation();
                              }),
                            );
                              },
                             
                            ),
                            CategoryCard(
                              title: "Quiz evaluation",
                              Src: "lib/assets/images/evaluation.png",
                              press: () {},
                              color: kPink,
                            ),
                            CategoryCard(
                              title: "Chat space",
                              Src: "lib/assets/images/chat.png",
                              press: () {
                               
                              },
                              color: kBlueLight,
                            ),
                            CategoryCard(
                              title: "Weekly plans",
                              Src: "lib/assets/images/weeklyPlan.png",
                              press: () {},
                              color: Colors.white,
                            ),
                          ],
                        ),
                    
                  )],
              ),
            ),
          )
        ],
      ),
      

    );
  }
}