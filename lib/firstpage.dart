import 'package:exflut2/Login.dart';
import 'package:exflut2/Police/HomePage/policehomepage.dart';
import 'package:exflut2/Police/HomePage/policelogin.dart';
import 'package:flutter/material.dart';
import 'signup.dart';

class userlogin extends StatefulWidget {
  @override
  _userloginState createState() => _userloginState();
}

const name = null;

class _userloginState extends State<userlogin> {
  Widget loginbutton(String ns, Widget sp) {
    return RaisedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return sp;
            },
          ),
        );
        animationDuration:
        Duration(seconds: 5);
      },
      elevation: 20,
      shape: const StadiumBorder(
        side: BorderSide(),
      ),
      color: Colors.black12,
      child: Text(
        ns,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      splashColor: Colors.indigo,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromRGBO(38, 38, 38, 0.4),

      body: Stack(
        children: <Widget>[
          Image(
            alignment: Alignment(6, 400),
            image: AssetImage("assets/police.png"),
            //Image.asset("images/police.png",height:250),
            height: 250,
            width: 250,
          ),
          Center(
              child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 330),
              ),
              loginbutton("Login with citizen", Login()),
              Padding(
                padding: EdgeInsets.only(top: 30.0),
              ),
              loginbutton("Login with Police", PoliceLogin())
            ],
          ))
        ],
      ),
    );
  }
}
