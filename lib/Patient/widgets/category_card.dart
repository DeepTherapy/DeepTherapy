import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'constants.dart';

class CategoryCard extends StatelessWidget {
  final String? Src;
  final String? title;
  final VoidCallback? press;
 final  Color? color;
 final Padding? padding;



  const CategoryCard({
    Key? key,
    this.Src,
    this.title,
    this.press,
    this.color,
    this.padding,
    
    
  
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      clipBehavior: Clip.antiAlias,
      borderRadius: BorderRadius.circular(13),
      child: 
       Container(
        
          // padding: EdgeInsets.all(20),
          child: Material(
            elevation: 5,
            color: color,
            
            child: InkWell(
              onTap: press,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                   
                   Expanded(child: SizedBox( height:100 ,child: Image.asset(Src!,fit: BoxFit.fill)),
        ),
                    
                    
                    Text(
                      title!,
                      textAlign: TextAlign.center,overflow: TextOverflow.clip,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontSize: 17),
                    )
                  ],
                ),
              ),
            ),
          ),
          
        ),
  );
  }
}
