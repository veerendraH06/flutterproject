import 'dart:ui';

import 'package:flutter/material.dart';

import 'Popup.dart';
import 'Register.dart';
class  Login_Screen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return  Login_State();
  }

}
class Login_State extends State<Login_Screen>{
  final email =TextEditingController();
  final password=TextEditingController();
  void login()
  {
    setState(() {
      var myemail = email.text;
      var mypass = password.text;
      print(myemail);

      if (myemail == "vhullatti@skycliffit.com" && mypass == "123456")
      {
        return showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
            title: Text("Alert "),
            content: Text("Successfully Login"),
            actions: <Widget>[
              FlatButton(
                onPressed: () {
                  Navigator.push(ctx, MaterialPageRoute(builder: (ctx)=> popup_screen() ));
                },
                child: Text("okay"),
              ),
            ],
          ),
        );
      }
      else
      {
        return showDialog(
          context: context,
          builder: (ctx) =>
              AlertDialog(
                title: Text("Your email id or password  incorrect "),
                //content: Text("You have raised a Alert Dialog Box"),
                actions: <Widget>[
                  FlatButton(
                    onPressed: () {
                      Navigator.push(ctx, MaterialPageRoute(builder: (ctx)=> Login_Screen() ),
                      );
                    },
                    child: Text('Login'),
                  ),
                ],
              ),
        );
      }
    }
    );

}



  @override

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        backgroundColor: Colors.black,
      ),
          backgroundColor: Colors.black,
          body: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      stops: [0.7, 1],
                      colors: [Colors.black, Colors.white])
              ),
            child: Column(
                children: [
                  Image.asset("assets/images/free.jpg",height: 150,width: 200,),
                  SizedBox(height: 10.0),
                  TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color:Colors.white,width: 2)),

                      contentPadding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
                      labelText: "Email",
                      labelStyle:  TextStyle(color: Colors.white),
                      hintText: "abc@gmail.com",
                      hintStyle: TextStyle(color: Colors.white),

                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(50.0)),


                    ),
                    controller: email,
                  ),
                  SizedBox(height: 20.0),
                  TextField(
                    obscureText: true,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color:Colors.white,width: 2)),
                      contentPadding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
                      labelText: "Password",
                      labelStyle:  TextStyle(color: Colors.white),
                      hintText: "*********",
                      hintStyle: TextStyle(color: Colors.white),

                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(50.0)),


                    ),
                    controller: password,
                  ),
              SizedBox(height: 20.0,),
              Row(
                children: [
                  Container(
                    child: Text('Forgot Password?', style: TextStyle(color: Colors.white),),
                    padding: const EdgeInsets.only(left: 260.0),

                    //color: Colors.deepPurpleAccent,
                  ),

                ],
              ),

              SizedBox(height: 30.0,),
              RaisedButton(
                color: Colors.deepPurpleAccent,
                splashColor: Colors.amberAccent,
                child: Text("Login"),
                onPressed: login,
            ),
              ],
            ),
    ),



      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(

            context, MaterialPageRoute(builder: (context)=> Register_Screen() ),

        );
      },
        backgroundColor: Colors.deepPurpleAccent,
        child: Icon(Icons.add),

      )
      );


  }

}


