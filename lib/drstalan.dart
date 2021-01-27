import 'package:flutter/material.dart';
class About extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
// TODO: implement createState
    return About_us();
  }
}
class About_us extends State<About>{
  @override
  Widget build(BuildContext context) {
// TODO: implement build
    return Scaffold(
          appBar: AppBar(
            title: Text("Details"),
            backgroundColor: Colors.black,
          ),
    backgroundColor: Colors.black,
      body:
      Container(
        child: Column(
          children: [
            Container(
              height: 200,
              child:Image.asset('assets/images/medi.png')
            ),
            // SizedBox(height: 20,),
            Card(
              elevation: 60,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(45.0),
              ),

              child: Column(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(45)),
                    color: Colors.white,
                    child: ListTile(
                      leading: Card(
                        child: CircleAvatar(
                          backgroundImage: NetworkImage('https://previews.123rf.com/images/djvstock/djvstock1612/djvstock161202138/65938907-cartoon-medical-woman-doctor-icon-inside-blue-circle-over-white-background-colorful-design-vector-il.jpg'),
                        ),
                      ),
                      title:
                      Text("Dr.Stella Kane",style: TextStyle(fontSize: 15.0,color: Colors.black),
                      ),
                      subtitle: Text("Heart Surgeon-Flower Hospital",style: TextStyle(fontSize: 12.0,color: Colors.black),),
                      trailing: Wrap(
                        spacing: 12, // space between two icons
                        children: <Widget>[
                          Icon(Icons.call,color: Colors.deepPurpleAccent),
                          Icon(Icons.message,color: Colors.deepPurpleAccent),
                          Icon(Icons.video_call,color: Colors.deepPurpleAccent,),// icon-2
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: ListTile(
                      title: Text("About Doctor",
                        style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.bold,color: Colors.black),
                      ),
                      subtitle: Text("Dr.Stella is the top most heart surgeon in flower\nHospital.she has done over 100 successful surgeries\nwithin past 3 years.She has achieved several\nawards for her wonderful contribution in her own\n field.She's available for private consultation for\ngiven schedules.",
                        style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold,color: Colors.black),
                      ),
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Text("Upcoming Schedules",style: TextStyle(
                            color: Colors.white,fontSize: 15, fontWeight: FontWeight.bold
                        ),),
                      ],
                    ),
                    padding: const EdgeInsets.only(left: 15,top: 10),
                  ),
                  Container(
                    child: ListView(
                      children: <Widget> [
                        Container(
                          height: 75,
                          child: ListTile(
                            leading: Container(

                              child:CircleAvatar(
                                backgroundImage: NetworkImage('https://png.pngtree.com/png-vector/20191109/ourmid/pngtree-november-7-vector-daily-calendar-icon-date-and-month-day-season-png-image_1975021.jpg'),
                              ),
                            ),
                            title: Text("Consultation",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                            subtitle: Text("Sunday . 9am-11am",style: TextStyle(color: Colors.white),),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          padding: const EdgeInsets.all(6),
                          margin: const EdgeInsets.only(bottom: 5),
                        ),
                        Container(
                          height: 75,
                          child: ListTile(
                            leading: Container(
                              child:
                              CircleAvatar(
                                backgroundImage: NetworkImage('https://image.shutterstock.com/image-vector/october-2nd-daily-calendar-icon-260nw-1489944809.jpg'),
                              ),
                            ),
                            title: Text("Consultation",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                            subtitle: Text("Monday . 9am-11am",style: TextStyle(color: Colors.white),),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          padding: const EdgeInsets.all(6),
                          margin: const EdgeInsets.only(bottom: 5),
                        ),
                        Container(
                          height: 75,
                          child: ListTile(
                            leading: Container(
                              child:
                              CircleAvatar(
                                backgroundImage: NetworkImage('https://image.freepik.com/free-vector/doctor-pointing-clipboard_23-2147795772.jpg'),
                              )
                            ),
                            title: Text("Consultation",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                            subtitle: Text("Tuesday . 9am-11am",style: TextStyle(color: Colors.white),),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          padding: const EdgeInsets.all(6),
                          margin: const EdgeInsets.only(bottom: 5),
                        ),

                      ],
                    ),
                    margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
                    height: 200,
                  ),
                ],
              ),

            ),

          ],
        ),
      ),
    );
  }
}