import 'package:flutter/material.dart';

const kPink= Color(0xFFFFF1E4);
const pink = Color(0xFFFFDAB9);
const kBlueLight = Color(0xFF68A3FF);
const kTextColor = Color(0xFF002366);
const kBlueLightColor = Color(0xFF0F52BA);
const kBlueColor = Color(0xFF979797);
const kShadowColor = Color(0xFF979797);

class Quote
 {
  String Quote1;
  String date;
  Color color;
  List colors = [Color(0xFFD9E6FF), Color(0xFFFFF6EE), Color(0xFFEFEAE5),Color(0xFF68A3FF),Color(0xFFF9D6B6)];
  List quotes = ['Success is not final\n failure is not fatal\n It is the courage \n to continue that counts', "hi", 
  "yo","b","c"];

  Quote(this.Quote1 , this.date,this.color);

  static List<Quote>generateQuoteBlog(){
    return [
      Quote('Success is not final\n failure is not fatal\n It is the courage \n to continue that counts','     06    \nJan 2022', Color(0xFFFFF1E4)),
       Quote('jkhjkkj','     06    \nJan 2022', Color(0xFFFF71E4)),
        Quote('jjnj','     06    \nJan 2022', Color(0xFF3BE80F)),
         Quote('Success is not final\n failure is not fatal\n It is the courage \n to continue that counts','     06    \nJan 2022', Color(0xFFEFE1E3)),
      
    ];
  } 

  
}