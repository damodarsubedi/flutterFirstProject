import 'package:flutter/material.dart';
class MyCards extends StatefulWidget {
  MyCards({Key key}) : super(key: key);

  _MyCardsState createState() => _MyCardsState();
}

class _MyCardsState extends State<MyCards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 5,
            right: 5,
            top: 10,  
            child:ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
              child: Image.asset(
                  "assets/images/8.png",
                  fit: BoxFit.fill,
                  height: 200,
                  
                ),
            )
          ),
          
           Positioned(
             top: 100,
             left: 5,
             right: 5,  
             child:ClipRRect(
               borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
               child: Image.asset(
                 "assets/images/5.png",
                 fit: BoxFit.fill,
                 height: 190,
                 ),
             )
           ),
          
          Positioned(
            left: 5,
            right: 5,
            top: 190,  
            child:ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
              child: Image.asset(
                  "assets/images/3.png",
                  fit: BoxFit.fill,
                  height: 200,
                  
                ),
            )
          ),      
        ],
      ),
    );
  }
}