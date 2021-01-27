import 'package:flutter/material.dart';
import 'size.dart';
import 'main.dart';


class GetStart extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    // throw UnimplementedError();
    return GetState();
  }

}

class GetState extends State<GetStart>{
  @override
  Widget build(BuildContext context) {

    Widget _portraitMode(){
      return Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FractionallySizedBox(
            child: Container(
              alignment: Alignment.center,
              child: ListView( children: [
                new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      //SizedBox(
                      //   height: displayHeight(context),
                      // ),
                      SnackBarPage(),
                      // SizedBox(
                      //   height: 600,
                      // ),
                      Padding(
                        padding: const EdgeInsets.only(left: 100,right: 0.0,top: 0.25,bottom: 0.0),
                        child: Container(
                          child: Row(
                            children: [
                              FractionallySizedBox(
                                child: Container(
                                  child: Text("hii"),
                                  color: Colors.green,
                                  height: displayHeight(context)*0.15,
                                  width: displayWidth(context)*0.25,
                                ),
                              ),
                              Container(
                                child: Text("hii"),
                                color: Colors.orange,
                                height: displayHeight(context)*0.15,
                                width: displayWidth(context)*0.25,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]
                ),
              ],
              ),
              color: Colors.lightBlueAccent ,
              height: displayHeight(context),
            ),
          ),

        ],
      );
    }

    Widget _landscapeMode(){
      return Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            child: ListView( children: [

              new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    //SizedBox(
                    //   height: displayHeight(context),
                    // ),
                    SnackBarPage(),

                    // SizedBox(
                    //   height: 600,
                    // ),
                    Padding(
                      padding: const EdgeInsets.only(left: 200.0,right: 0.0,top: 0.25,bottom: 0.0),
                      child: Container(
                        child: Row(
                          children: [
                            Container(
                              child: Text("hii"),
                              color: Colors.green,
                              height: displayHeight(context)*0.30,
                              width: displayWidth(context)*0.20,
                            ),
                            Container(
                              child: Text("hii"),
                              color: Colors.orange,
                              height: displayHeight(context)*0.30,
                              width: displayWidth(context)*0.20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]
              ),
            ],
            ),
            color: Colors.pink,
          ),

        ],
      );
    }
    // TODO: implement build
    //throw UnimplementedError();


    return Scaffold(
      // body: Builder(builder: (context) {
      body: OrientationBuilder(
        builder: (context, orientation){
          if(orientation == Orientation.portrait){
            return _portraitMode();
          }else{
            return _landscapeMode();
          }
        },
      ),
      //  }
      // ),
    );
  }

}

class SnackBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          final snackBar = SnackBar(
            content: Text('Yay! A SnackBar!'),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {
                // Some code to undo the change.
              },
            ),
          );

          // Find the Scaffold in the widget tree and use
          // it to show a SnackBar.
          Scaffold.of(context).showSnackBar(snackBar);
        },
        child: Text('Show SnackBar'),
      ),
    );
  }
}