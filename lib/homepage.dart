import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'signin.dart';


class MyDashboard extends StatefulWidget {
  @override
  _MyDashboardState createState() => _MyDashboardState();
}

class _MyDashboardState extends State<MyDashboard> {
  SharedPreferences logindata;
  String username;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initial();
  }

  void initial() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      username = logindata.getString('username');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared Preference"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(26.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text(
                'WELCOME TO Skycliffit  $username',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            RaisedButton(
              onPressed: () {
                logindata.setBool('login', true);
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => MyLoginPage()));
              },
              child: Text('LogOut'),
            )
          ],
        ),
      ),
    );
  }
}