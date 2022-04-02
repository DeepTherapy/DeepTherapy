import 'package:deeptherapy/LoginDoc.dart';
import 'package:deeptherapy/Patient/Link_Patient.dart';
import 'Patient/create_profile_P.dart';
import  'LoginDoc.dart';
import 'Navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'constants.dart';
import 'hello.dart';
import 'spaces.dart';
import 'details_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      routes: {
          
          LinkPatient.route_name: (ctx) => LinkPatient()

        },);
      
      }
      }

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; //this gonna give us total height and with of our device
    return Scaffold(
      // ignore: prefer_const_constructors
      bottomNavigationBar: BottomNavBar(key: Key('hi'),),
      body: Stack(
        children: <Widget>[
          Container(
            // Here the height of the container is 45% of our total height
            height: size.height * .45,
            decoration: BoxDecoration(
              color: Color(0xFFF5CEB8),
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage("assets/images/undraw_pilates_gpdb.png"),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                        color: Color(0xFFF2BEA1),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset("assets/icons/menu.svg"),
                    ),
                  ),
                  Text(
                    "Good Mornign \nShishir",
                    style: Theme.of(context)
                        .textTheme.
                        bodyText1?.copyWith(fontWeight: FontWeight.w900),
                        
                  ),
                  SearchBar(key: Key('search')),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        CategoryCard(key: Key('category'),
                          title: "Diet Recommendation",
                          svgSrc: "assets/icons/Hamburger.svg",
                          press: () {},
                        ),
                        CategoryCard(key: Key('category'),
                          title: "Kegel Exercises",
                          svgSrc: "assets/icons/Excrecises.svg",
                          press: () {},
                        ),
                        CategoryCard(key: Key('category'),
                          title: "Meditation",
                          svgSrc: "assets/icons/Meditation.svg",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return DetailsScreen();
                              }),
                            );
                          },
                        ),
                        CategoryCard(key: Key('category'),
                          title: "Yoga",
                          svgSrc: "assets/icons/yoga.svg",
                          press: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
    
  }
  }