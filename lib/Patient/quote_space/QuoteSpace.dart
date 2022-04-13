
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:deeptherapy/Patient/widgets/constants.dart';
import 'package:deeptherapy/Patient/widgets/bottom_nav_bar.dart';
import 'package:flutter_clean_calendar/flutter_clean_calendar.dart';
class QuoteApp extends StatefulWidget {
  @override
  _QuoteAppState createState() => _QuoteAppState();
}

//Notes:
//1- History for quotes last 1 year.
//2- Scroll to previous days (quotes) or click on day.
//3- Generate list items to be fixed
//4- Recommendation System: We have a database (quote/label), we predict the quotes correlated to the patient's label.  
//5- We save the index of quotes joined the date (starting from using the app), one quote / day will be revealed accessing previous quotes.
//6- first five days will have general quotes
//7- database(quote, date, shown (bool)) 

class _QuoteAppState extends State<QuoteApp> {
    
  Random random = new Random();
int index = 0;

  void changeIndex() {
    setState(() => index = random.nextInt(3));
  }

  final _list = Quote.generateQuoteBlog();
  final _pageCtrl = PageController(viewportFraction: 0.9);

  DateTime? selectedDay;
  List? selectedEvent;

  final Map<DateTime, List<CleanCalendarEvent>> events = {
    DateTime(2020,12,12): [
      {'Name': 'Your event Name', 'isDone' : true},
      {'Name': 'Your event Name 2', 'isDone' : true},
      {'Name': 'Your event Name 3', 'isDone' : false},
    ].cast<CleanCalendarEvent>(),
    DateTime(2020,12,2): [
      {'Name': 'Your event Name', 'isDone' : false},
      {'Name': 'Your event Name 2', 'isDone' : true},
      {'Name': 'Your event Name 3', 'isDone' : false},
    ].cast<CleanCalendarEvent>()
  };

  void _handleData(date){
    setState(() {
      selectedDay = date;
      selectedEvent = events[selectedDay] ?? [];
    });
    print(selectedDay);
  }

  @override
  void initState() {
    // TODO: implement initState
    selectedEvent = events[selectedDay] ?? [];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    
      var quote = _list[index];
    return Scaffold(
     bottomNavigationBar: BottomNavBar(),

      appBar: AppBar(
           backgroundColor: Colors.white,elevation: 0,
           title: 
           
            Text("Quote Space", style: TextStyle(color: Colors.black87,fontWeight: FontWeight.w700),
           ),
          leading: IconButton(
              icon: const Icon(Icons.arrow_back,size:35,color:kBlueLight,), onPressed: () {  },),
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
      body: SafeArea( 
       child: 
       Padding(
         padding: const EdgeInsets.all(15.0),
         child: Column(children: <Widget>[
           Container(
              width: 500,
              height: 150,
             child:Calendar(
                startOnMonday: true,
                selectedColor: Colors.blue,
                todayColor: Colors.red,
               
                onRangeSelected: (range){
                  print('Selected Day ${range.from}, ${range.to}');
                },
                onDateSelected: (date){
                  return _handleData(date);
                },
                events: events,
                isExpanded:false,
                dayOfWeekStyle: TextStyle(
                  fontSize: 13,
                  color: Color(0xFF979797),
                  fontWeight: FontWeight.w900,
                ),
               
                hideBottomBar: false,
                isExpandable: false,
                hideArrows: false,
                weekDays: ['Mon','Tue','Wed','Thu','Fri','Sat','Sun'],

                
              ),
            ),
            
Container(width: 350,height:330,child: PageView.builder(
      controller: _pageCtrl,
      itemCount: _list.length,
      itemBuilder: (context,index){
        return Container(
              
               width: 500,
               height: 320,
         color:quote.colors[index],
       child: Positioned(
         
          child: Column(
      
              children: [
              Material(
                color:Colors.transparent,
                child:
                Padding(
                  padding: const EdgeInsets.only(right:170,top:25),
                  child: Text(quote.date,
                  style:TextStyle(
                    color:Colors.white,fontWeight: FontWeight.w600,
                    fontSize: 15)),
                )),
              
              
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 50),
                     child: Material(
                color:Colors.transparent,
                
                  child: Text(quote.quotes[index],textAlign:TextAlign.center,
                  style:
                  TextStyle(color:Color(0xFF979797),fontWeight:FontWeight.bold,fontSize: 20)
                      ),
                
                  ),
                   ),
  
                 Material(
                   color: Colors.transparent,
                 child: IconButton(
            icon:  Icon(Icons.favorite_border),
            color: Color(0xFF979797),iconSize: 35,
            onPressed: () {},
          ),
          ),       
          ],
          )
        ),
             );})
)]),
       ),
          ),
            
      ); 
  }
}
