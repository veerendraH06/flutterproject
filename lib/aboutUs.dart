import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class about_us extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return about_state();
  }
  
}
class about_state extends State<about_us>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('About us'),
      ),
      backgroundColor: Colors.black,
      body:Container(
        child: Column(
          children: [
            Container(
              child: Image.asset("assets/images/contact.jpg"),
            ),
            SizedBox(height: 50,),
            Row(
              children: [
                Text("     Skycliff IT is passionately built to excel \n  in Quality,Value and Time driven Techno \n  Commercial world. We understand the \n  Customer Requirements and Time bound \n  business commitments, thus, perform \n  time critical processes to deliver accurate \n  results with quality as the prime and \n  unique proposition.",style: TextStyle(color: Colors.white,fontSize: 20),),

              ],
            ),
            SizedBox(height: 50,),
            Container(
              padding: EdgeInsets.only(left: 40),
              child:Row(
                children: [Row(
                  children: [
                    Icon(Icons.call,color: Colors.deepPurpleAccent),
                    SizedBox(width: 10,),
                    RaisedButton(
                      color: Colors.deepPurpleAccent,
                      textColor: Colors.white,
                      disabledColor: Colors.grey,
                      disabledTextColor: Colors.black,
                      padding:
                      EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        side: BorderSide(
                            color: Colors.amberAccent,
                            width: 2,
                            style: BorderStyle.solid),
                      ),

                      splashColor: Colors.amberAccent,
                      onPressed: launchCALL,
                      child: Text(
                        "Call",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ],

                ),
                  SizedBox(width: 50,),
                  Row(
                    children: [
                      Icon(Icons.message,color: Colors.deepPurpleAccent,),
                      SizedBox(width: 10,),
                      RaisedButton(
                      color: Colors.deepPurpleAccent,
                      textColor: Colors.white,
                      disabledColor: Colors.grey,
                      disabledTextColor: Colors.black,
                      padding:
                      EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        side: BorderSide(
                            color: Colors.amberAccent,
                            width: 2,
                            style: BorderStyle.solid),
                      ),
                      splashColor: Colors.amberAccent,
                      onPressed: launchMSG,
                      child: Text(
                        "Message",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    )],

                  ),],
              ),
            ),

            SizedBox(height: 50,),
            Container(
              padding: EdgeInsets.only(left: 40),
              child:
              Row(
                children: [Row(
                  children: [
                    Icon(Icons.web,color: Colors.deepPurpleAccent,),
                    SizedBox(width: 10,),
                    RaisedButton(
                      color: Colors.deepPurpleAccent,
                      textColor: Colors.white,
                      disabledColor: Colors.grey,
                      disabledTextColor: Colors.black,
                      padding:
                      EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        side: BorderSide(
                            color: Colors.amberAccent,
                            width: 2,
                            style: BorderStyle.solid),
                      ),
                      splashColor: Colors.amberAccent,
                      onPressed: launchURL,
                      child: Text(
                        "Website",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    )
                  ],

                ),
                  SizedBox(width: 50,),
                  Row(
                    children: [
                      Icon(Icons.email,color: Colors.deepPurpleAccent,),
                      SizedBox(width: 10,),
                      RaisedButton(
                      color: Colors.deepPurpleAccent,
                      textColor: Colors.white,
                      disabledColor: Colors.grey,
                      disabledTextColor: Colors.black,
                      padding:
                      EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        side: BorderSide(
                            color: Colors.amberAccent,
                            width: 2,
                            style: BorderStyle.solid),
                      ),
                      splashColor: Colors.amberAccent,
                      onPressed: launchEmail,
                      child: Text(
                        "Email",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    )
                    ],

                  ),],
              ),

            ),


          ],
          
        
      )
      ),
    );
  }

  
}
 launchURL() async {
  const url = 'http://www.skycliffit.com';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
launchCALL() async {
  const call = 'tel:+91 900 8434125';
  if (await canLaunch(call)) {
    await launch(call);
  } else {
    throw 'Could not launch $call';
  }
}
launchMSG() async {
  const msg = 'sms:5550101234';
  if (await canLaunch(msg)) {
    await launch(msg);
  } else {
    throw 'Could not launch $msg';
  }
}
launchEmail() async {
  const email = 'mailto:vhullatti@skycliffit.com';
  if (await canLaunch(email)) {
    await launch(email);
  } else {
    throw 'Could not launch $email';
  }
}
