import 'design_one.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'list_image.dart';
import 'my_card.dart';
import 'star_rating.dart';

void main() => runApp(
  
  MaterialApp(
    theme: ThemeData.dark(),
    darkTheme: ThemeData.dark(),
    home:MyHomePage()
  )
);
   
class MyHomePage extends StatefulWidget {
  
  
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  bool darkThemeEnabled=false;
  @override
  
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: darkThemeEnabled ? ThemeData.dark() : ThemeData.light(),
      home: MyPage(),
    );
  }
  Widget MyPage(){
    return Scaffold(
      appBar: AppBar(
        title: Text("Credit Card"),
        backgroundColor: Color.fromRGBO(120, 130, 140,0.0), 
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text("Dark Theme"),
              trailing: Switch(
                value: darkThemeEnabled,
                onChanged: (changedTheme){
                  setState(() {
                   darkThemeEnabled = changedTheme; 
                  });
                  
                 },
              ),
            ),
            RaisedButton(onPressed: (){},
            color: Colors.blue,
            child: Text("Blue Theme")
            ),
            RaisedButton(onPressed: (){new ThemeData(primaryColor: Colors.green);},color: Colors.green,)
          ],
        ),
      ),
      body: [
        MyCards(),
        ListImage(),
        Listsss(),
        StarRating(),
        ].elementAt(_selectedIndex),
      bottomNavigationBar: CurvedNavigationBar(
        height: 50.0,
        onTap: _onTapItem,
        items: <Widget>[
          Icon(Icons.home, size: 30,color: Colors.black),
          Icon(Icons.compare_arrows, size: 30,color: Colors.black),
          Icon(Icons.navigate_next, size: 30,color: Colors.black),
          Icon(Icons.star, size: 30,color: Colors.black),
        ],        
        color: Colors.green,
        backgroundColor: Colors.black,
        buttonBackgroundColor: Colors.green,
        animationDuration: Duration(milliseconds: 900),
      ),     
    );
  }
  void _onTapItem(int value){
    setState(() {
     _selectedIndex =value; 
    });
  }
}
