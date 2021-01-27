import 'package:flutter/material.dart';

import 'BookSession.dart';
import 'login.dart';
import 'main.dart';

class popup_screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return popup_state();
  }
}

class popup_state extends State {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        title: Text("Home page"),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body:
      Container(
        child: Column(
          children: [
            ListTile(
              title: Text(
                'Hello,',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
                title: Text('How Can We take care yourself?',
                    style: TextStyle(fontSize: 25, color: Colors.blueGrey))),
            SizedBox(height: 40,),

            Row(
              children: [
                Container(
                  color: Colors.deepPurpleAccent[200],
                  height: 180.0,
                  width: 150.0,

                  child: Container(
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(
                            Icons.account_circle,
                            color: Colors.white,
                            size: 40,
                          ),
                          focusColor: Colors.deepPurpleAccent[200],
                        ),
                        ListTile(
                          title: Text(
                            "Find Doctor",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          subtitle: Text(
                            '0 Doctor',
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox( width:20.0),
                Container(
                  color: Colors.deepPurpleAccent[200],
                  height: 180.0,
                  width: 150.0,

                  child: Container(
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(
                            Icons.local_hospital_sharp,
                            color: Colors.white,
                            size: 40,
                          ),
                          focusColor: Colors.deepPurpleAccent[200],
                        ),
                        ListTile(
                          title: Text(
                            "Find Hospital",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          subtitle: Text(
                            '0 Hospital',
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                // Container(
                //   color: Colors.deepPurpleAccent[200],
                //   height: 180.0,
                //   width: 150.0,
                //
                //   child: Container(
                //     child: Column(
                //
                //       children: [
                //         ListTile(
                //           leading: Icon(Icons.account_circle,
                //             color: Colors.white,
                //             size: 40,),
                //           focusColor: Colors.deepPurpleAccent[200],
                //         ),
                //         ListTile(
                //           title: Text("Find Doctor",style: TextStyle(color: Colors.white, fontSize: 20),),
                //           subtitle: Text('0 Doctor', style: TextStyle(color: Colors.white), ),
                //
                //         )
                //       ],
                //     ),
                //   ),
                // ),

                // Container(
                //   height: 180.0,
                //   width: 150.0,
                //   child: Icon(Icons.apartment_outlined),
                //   margin: const EdgeInsets.all(20.0),
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(40),
                //     color: Colors.deepPurpleAccent[100],
                //
                //   ),
                // ),
              ],
            ),
            SizedBox(height: 20.0, width: 20,),
            Row(
              children: [
                Container(
                  color: Colors.deepPurpleAccent[200],
                  height: 180.0,
                  width: 150.0,
                  child: Container(
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(
                            Icons.add_to_photos,
                            color: Colors.white,
                            size: 40,
                          ),
                          focusColor: Colors.deepPurpleAccent[200],
                        ),
                        ListTile(
                          title: Text(
                            "Appointment",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          subtitle: Text(
                            '0 Available',
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox( width:20.0),
                Container(
                  color: Colors.deepPurpleAccent[200],
                  height: 180.0,
                  width: 150.0,
                  child: Container(
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(
                            Icons.calendar_today,
                            color: Colors.white,
                            size: 40,
                          ),
                          focusColor: Colors.deepPurpleAccent[200],
                        ),
                        ListTile(
                          title: Text(
                            "Drug List",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          subtitle: Text(
                            '0 Services',
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                ),


              ],
            )
            // Row( children: [
            //   Container(
            //     height: 180.0,
            //     width: 150.0,
            //     margin: const EdgeInsets.all(20.0),
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(40),
            //       color: Colors.deepPurpleAccent[100],
            //
            //     ),
            //   ),
            //   Container(
            //     height: 180.0,
            //     width: 150.0,
            //     margin: const EdgeInsets.all(20.0),
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(40),
            //       color: Colors.deepPurpleAccent[100],
            //
            //     ),
            //   ),
            // ],
            //
            //
            // ),
          ],
        ),
      ),

      // backgroundColor: Colors.black,
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              //   decoration:  BoxDecoration(image: DecorationImage(
              //     image: AssetImage("assets/images/drawerImage.jpg"),
              //     fit: BoxFit.cover
              // ),
              // ),
              accountName: Text("Veerendra H"),
              accountEmail: Text("vhhullatti@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.black,
                // Theme.of(context).platform == TargetPlatform.android
                //     ? Colors.blue
                //     : Colors.white,
                child: Text(
                  "V",
                  style: TextStyle(fontSize: 40.0),
                ),
                // backgroundImage: NetworkImage("https://images.unsplash.com/photo-1480429370139-e0132c086e2a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80"
                // ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.android_outlined),
              title: Text("BMI Calculator"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => MyHomePage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.add_a_photo_outlined),
              title: Text("Book Class"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Book_Session()));
                //Navigator.pop(context);
              },
            ),
            // ListTile(leading: Icon(Icons.style),
            //   title: Text("Item3"),
            //   onTap: (){
            //     Navigator.of(context).pop();
            //     Navigator.of(context).push(MaterialPageRoute(
            //         builder: (BuildContext context) => NewP1()));
            //     Navigator.pop(context);
            //   },
            // ),
            // ListTile(leading: Icon(Icons.account_balance),
            //   title: Text("Item4"),
            //   onTap: (){
            //     Navigator.of(context).pop();
            //     Navigator.of(context).push(MaterialPageRoute(
            //         builder: (BuildContext context) => NewP1()));
            //     Navigator.pop(context);
            //   },
            // ),
            Container(
              padding: const EdgeInsets.only(
                  left: 0.0, right: 0.0, top: 0.0, bottom: 0.0),
              child: ListTile(
                leading: Icon(Icons.logout),
                title: Text("Logout"),
                onTap: () {
                  //Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => Login_Screen()));
                  // Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
