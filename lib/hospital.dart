import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class Hospital_Screen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Hospital_State();
  }


}
class Hospital_State extends State<Hospital_Screen>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('lvysaur'),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Card(
        child: Center(
          child: Container(
          child: Image.network('assets/images/002-22.png'),
          ) ,

    //     shape: RoundedRectangleBorder(
    //     borderRadius: BorderRadius.circular(15.0),
    // ),
        )
    )
    );
  }

}