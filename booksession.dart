import 'package:flutter/material.dart';

class Book_Session extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Session_State();
  }

}
class Session_State extends State<Book_Session>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          title: Text("Book your class"),

        ),
        body:ListView(
          children: [
            Image.network("https://dribbble.com/shots/4227985-Gym-Guy"),
            FlatButton(onPressed: (){},

               child:  Text("boook now"),
                //Style:TextStyle(
                 // color: Colors.blue,

                )


          ],
        ),
      ),
    );
  }

}