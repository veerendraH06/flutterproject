import 'package:flutter/material.dart';

class  bmi_cal extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return bmi_state();
  }

}
class bmi_state extends State
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return MaterialApp(
     home: Scaffold(
       appBar: AppBar(
         title: Text("BMI"),
         backgroundColor: Colors.black,



       ),
       //backgroundColor: Colors.black54,
       body: ListTile(
         leading: Icon(Icons.add),
         title: Text("Register to fitness class "),
         trailing: Icon(Icons.accessibility),
         subtitle: Text('Welcome'),
         onTap: (){},



       ),
     ),

   );
  }

  }

