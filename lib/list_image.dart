
import 'package:flutter/material.dart';

class ListImage extends StatefulWidget {
  _ListImageState createState() => _ListImageState();
  
}

class _ListImageState extends State<ListImage> {
  Imagesss(String imageurl, String heading1, String heading2){
    Container(
      width: 160.0,
      child: Card(
        child: Wrap(
          children: <Widget>[
            Image.asset(imageurl),
            ListTile(
              title: Text(heading1),
              subtitle: Text(heading2),
            )
          ],
          ),
      ),
    );
    }  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      height: 200,
       child: ListView(
         scrollDirection: Axis.horizontal,
         children: <Widget>[
           //Imagesss("assets/images/8.png","heading 3","subheading 3"),
           
           Container(
             width: 160.0,
             child: Card(
               child: Wrap(
                 children: <Widget>[
                   Image.asset("assets/images/3.png"),
                   ListTile(
                     title: Text("Heading1"),
                     subtitle: Text("SubHeading1"),
                   )
                 ],
                 ),
             ),
           ),
           Container(
             width: 160.0,
             child: Card(
               child: Wrap(
                 children: <Widget>[
                   Image.asset("assets/images/4.png"),
                   ListTile(
                     title: Text("Heading2"),
                     subtitle: Text("SubHeading2"),
                   )
                 ],
                 ),
             ),
           ),
           Container(
             width: 160.0,
             child: Card(
               child: Wrap(
                 children: <Widget>[
                   Image.asset("assets/images/5.png"),
                   ListTile(
                     title: Text("Heading3"),
                     subtitle: Text("SubHeading3"),
                   )
                 ],
                 ),
             ),
           ),
           
         ],
         
       ),
    );
  }
}