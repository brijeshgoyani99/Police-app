import 'package:flutter/material.dart';

import 'appointment_screen.dart';

class HelplineScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Widget buildButton1(IconData icon, String buttonTitle) {
      Color tintColor = Colors.green;
      return Column(
        children: <Widget>[
          Container(
            //  height: 57.0,
            // width: 57.0,
            margin: EdgeInsets.only(top: 10.0),
            /*  decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.0),
              color: Colors.green
            ),*/
            child: IconButton(
              iconSize: 60.0,
              icon: Icon(icon, color: Colors.green),
              onPressed: ()  {
             
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 5.0),
            child: Text(
              buttonTitle,
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.black54),
            ),
          ),
        ],
      );
    }

    Widget buildButton2(IconData icon, String buttonTitle) {
      Color tintColor = Colors.green;
      return Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 10.0),
            child: IconButton(
              iconSize: 60.0,
              icon: Icon(icon, color: tintColor),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute<Null>(builder: (BuildContext context) {
                  return AppointmentScreen();
                }));
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 5.0),
            child: Text(
              buttonTitle,
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.black54),
            ),
          ),
        ],
      );
    }

    Widget buildButton3(IconData icon, String buttonTitle) {
      Color tintColor = Colors.green;
      return Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 10.0),
            child: IconButton(
              iconSize: 60.0,
              icon: Icon(icon, color: tintColor),
              onPressed: ()  {
             
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 5.0),
            child: Text(
              buttonTitle,
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.black54),
            ),
          ),
        ],
      );
    }


      Widget buttonSection1 = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          // Text("Button 1",style: TextStyle(fontSize: 16.0),),
          buildButton1(Icons.call, "Dial 100"),
          buildButton2(Icons.pregnant_woman, "Women\nHelpline"),
          buildButton3(Icons.traffic, "Traffic\nHelpline")
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Helpline number'),
      ),
      body: 
        buttonSection1,
       /* child: RaisedButton(
          color: Colors.red,
          child: Text('Go back to Home Page'),
          onPressed: () {
            //Use`Navigator` widget to pop oir go back to previous route / screen
            Navigator.pop(context);
          },
        ),*/
    );
  }
}