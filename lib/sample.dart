import 'package:flutter/material.dart';

class SampleDemo extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var DefalultSize = 600;
    var DefalutWidth = DefalultSize/2;
    var DefalutHeight = DefalultSize/2;
   return Scaffold(
     appBar: AppBar(title: Text("LayoutBuilder example"),
     ),
     body: LayoutBuilder(builder: (context, constarints){
       if(constarints.maxWidth >DefalultSize)
         {
           return _buildWideContainer();
         }
       else
         {
           return _buildNormalContainer();
         }
     }
     ),
   );
  }
  // mobile
  Widget _buildNormalContainer()
  {
    return Center(
      child: Container( height: 100.0,
      width: 100.0,
      color: Colors.red,),
    );
  }
  // tab and desk
  Widget _buildWideContainer()
  {
    return Center(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [Container(
            height: 100.0,
            width: 100.0,
            color: Colors.red,
          ),
          Container(
            height: 100.0,
            width: 100.0,
            color: Colors.yellow
          )],

        ),
      ),
    );
  }

}