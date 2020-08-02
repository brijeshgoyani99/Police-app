import 'package:exflut2/Police/HomePage/homepage.dart';
import 'package:exflut2/Police/HomePage/noc_request.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PoliceHomepage extends StatefulWidget {
  @override
  _PoliceHomepageState createState() => _PoliceHomepageState();
}

class _PoliceHomepageState extends State<PoliceHomepage> {

  @override
  Widget build(BuildContext context) {

    final topAppBar = AppBar(
      //  elevation: 0.1,
      elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
      backgroundColor: Colors.white,
      //fromRGBO(58, 66, 86, 1.0),
      //primarySwatch: Colors.pink,
      title: Text("Gujarat Police",
          style: TextStyle(
              color: Colors.black,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w700),
          textAlign: TextAlign.center),
      centerTitle: true,
      iconTheme: new IconThemeData(color: Colors.black),
      /*  actions: <Widget>[
        IconButton(
          icon: Icon(Icons.list),
          onPressed: () {},
        )
      ],*/
    );

     Widget buildButton(IconData icon, String buttonTitle,Widget navigate) {
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
                  return navigate;
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

      Widget buttonSection1 = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          // Text("Button 1",style: TextStyle(fontSize: 16.0),),
          buildButton(Icons.chrome_reader_mode, "MP FIR",Request()),
          buildButton(Icons.home, "Event NOC",NocRequest()),
          buildButton(Icons.message, "Message",NocRequest())
        ],
      ),
    );

    return Scaffold(  
      appBar: topAppBar,
      drawer: Drawer(),
      body: ListView(
        children: <Widget>[
          buttonSection1,
        ],
      ),      
    );
  }
}