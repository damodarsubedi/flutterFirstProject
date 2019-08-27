import 'star_rating.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Listsss extends StatefulWidget {
 
  _ListsssState createState() => _ListsssState();
}
Widget customMethod(String title){
  return new ListTile(
    title: Text(title),
    trailing: StarRating(),
  );
}
class _ListsssState extends State<Listsss> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: ListView(
         children: <Widget>[
          ListTile(
            title: Text("Damodar Subedi"),
            trailing: Icon(Icons.star),
          ),
          ListTile(
            title: Text("Archana Subedi"),
            trailing: Icon(Icons.star),
          ),
          //customMethod("Manorath Subedi"),
          // customMethod("Manorath Subedi"),
         ],
       ),
    );
  }
}