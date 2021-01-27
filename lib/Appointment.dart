import 'package:flutter/material.dart';
class appointment_Screen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
// TODO: implement createState
    return appointment();
  }
}
enum SingingCharacter { first, Second }
class appointment extends State<appointment_Screen>{
  @override
  Widget build(BuildContext context) {
    SingingCharacter _character = SingingCharacter.first;

// TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Info"),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Column(children: [
            Container(
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                        "Book your Appointment",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      )),
                ],
              ),
                padding: const EdgeInsets.only(top: 35, left: 22, right: 5),
            ),
            SizedBox(height: 10,),
            Container(
              child: ListTile(
                title: TextFormField(
                  decoration: new InputDecoration(
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.only(bottom: 15),
                      hintText: "Search for doctors"),
                ),
                trailing: Container(
                  child: Icon(
                    Icons.search,
                  ),
                  padding: const EdgeInsets.only(bottom: 10),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(50),
              ),
              padding: const EdgeInsets.only(left: 10, right: 10),
              margin: const EdgeInsets.only(left: 10, right: 10, top: 25),
              height: 45,
            ),
            ListTile(
              title: const Text('first'),
              leading: Radio(
                value: SingingCharacter.first,
                groupValue: _character,
                onChanged: (SingingCharacter value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('second'),
              leading: Radio(
                value: SingingCharacter.Second,
                groupValue: _character,
                onChanged: (SingingCharacter value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ),

          ],)
        ],
      ),

    );
  }
}