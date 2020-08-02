//import 'dart:js';
import 'package:exflut2/NOC/allevents.dart';
import 'package:flutter/material.dart';

enum DialogAcion { yes, abort }

class NocDialogs {
  static const icon_size = 35.0;
  static const label_size = 12.0;
  static const icon_top_padding = 0.0;
  static const label_top_padding = 0.0;
  static const icon_color = Colors.red;
  static const Label_color = Colors.green;

  Future<DialogAcion> nocdialog(
    BuildContext context,
  ) async {
    Widget buildButton1(IconData icon, String buttonTitle) {
      return Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: icon_top_padding),
            child: IconButton(
              iconSize: icon_size,
              icon: Icon(icon, color: icon_color),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute<Null>(builder: (BuildContext context) {
                  return Event();
                }));
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: label_top_padding),
            child: Text(
              buttonTitle,
              style: TextStyle(
                  fontSize: label_size,
                  fontWeight: FontWeight.w600,
                  color: Label_color),
            ),
          ),
        ],
      );
    }

    Widget buildButton2(IconData icon, String buttonTitle) {
      return Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: icon_top_padding),
            child: IconButton(
              iconSize: icon_size,
              icon: Icon(icon, color: icon_color),
              onPressed: () {},
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: label_top_padding),
            child: Text(
              buttonTitle,
              style: TextStyle(
                  fontSize: label_size,
                  fontWeight: FontWeight.w600,
                  color: Label_color),
            ),
          ),
        ],
      );
    }

    Widget buildButton3(IconData icon, String buttonTitle) {
      return Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: icon_top_padding),
            child: IconButton(
                iconSize: icon_size,
                icon: Icon(icon, color: icon_color),
                onPressed: () {}),
          ),
          Container(
            margin: const EdgeInsets.only(top: label_top_padding),
            child: Text(
              buttonTitle,
              style: TextStyle(
                  fontSize: label_size,
                  fontWeight: FontWeight.w600,
                  color: Label_color),
            ),
          ),
        ],
      );
    }

    Widget buildButton4(IconData icon, String buttonTitle) {
      return Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: icon_top_padding),
            child: IconButton(
              iconSize: icon_size,
              icon: Icon(icon, color: icon_color),
              onPressed: () {},
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: label_top_padding),
            child: Text(
              buttonTitle,
              style: TextStyle(
                  fontSize: label_size,
                  fontWeight: FontWeight.w600,
                  color: Label_color),
            ),
          ),
        ],
      );
    }

    Widget buildButton5(IconData icon, String buttonTitle) {
      return Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: icon_top_padding),
            child: IconButton(
              iconSize: icon_size,
              icon: Icon(icon, color: icon_color),
              onPressed: () {},
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: label_top_padding),
            child: Text(
              buttonTitle,
              style: TextStyle(
                  fontSize: label_size,
                  fontWeight: FontWeight.w600,
                  color: Label_color),
            ),
          ),
        ],
      );
    }

    Widget buildButton6(IconData icon, String buttonTitle) {
      return Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: icon_top_padding),
            child: IconButton(
              iconSize: icon_size,
              icon: Icon(icon, color: icon_color),
              onPressed: () {},
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: label_top_padding),
            child: Text(
              buttonTitle,
              style: TextStyle(
                  fontSize: label_size,
                  fontWeight: FontWeight.w600,
                  color: Label_color),
            ),
          ),
        ],
      );
    }

    Widget buildButton7(IconData icon, String buttonTitle) {
      return Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: icon_top_padding),
            child: IconButton(
              iconSize: icon_size,
              icon: Icon(icon, color: icon_color),
              onPressed: () {},
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: label_top_padding),
            child: Text(
              buttonTitle,
              style: TextStyle(
                  fontSize: label_size,
                  fontWeight: FontWeight.w600,
                  color: Label_color),
            ),
          ),
        ],
      );
    }

    Widget buildButton8(IconData icon, String buttonTitle) {
      return Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: icon_top_padding),
            child: IconButton(
              iconSize: icon_size,
              icon: Icon(icon, color: icon_color),
              onPressed: () {},
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: label_top_padding),
            child: Text(
              buttonTitle,
              style: TextStyle(
                  fontSize: label_size,
                  fontWeight: FontWeight.w600,
                  color: Label_color),
            ),
          ),
        ],
      );
    }

    Widget buildButton9(IconData icon, String buttonTitle) {
      return Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: icon_top_padding),
            child: IconButton(
              iconSize: icon_size,
              icon: Icon(icon, color: icon_color),
              onPressed: () {},
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: label_top_padding),
            child: Text(
              buttonTitle,
              style: TextStyle(
                  fontSize: label_size,
                  fontWeight: FontWeight.w600,
                  color: Label_color),
            ),
          ),
        ],
      );
    }

    //------ButtonSection...--------
    Widget buttonSection1 = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          buildButton1(Icons.chrome_reader_mode, "Events"),
          buildButton2(Icons.home, "Clearance"),
          buildButton3(Icons.settings, "Tenant")
        ],
      ),
    );

    Widget buttonSection2 = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          buildButton4(Icons.message, "M"),
          buildButton5(Icons.phone_in_talk, "H"),
          buildButton6(Icons.local_hotel, "N")
        ],
      ),
    );

/*    Widget buttonSection3 = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          buildButton7(Icons.favorite, "FIR"),
          buildButton8(Icons.home, "Appointment"),
          buildButton9(Icons.settings, "NOC")
        ],
      ),
    );*/

    final action = showGeneralDialog(
      barrierColor: Colors.black.withOpacity(0.7),
      transitionBuilder: (context, a1, a2, widget) {
        return Transform.scale(
          scale: a1.value,
          child: Opacity(
            opacity: a1.value,
            child: AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0)),
              title: Column(
                children: <Widget>[
                  buttonSection1,
                  buttonSection2,
                  //  buttonSection3
                ],
              ),

              /*  actions: <Widget>[
                       IconButton(
                        iconSize: 30.0,
                            icon: Icon(Icons.favorite, color: Colors.red,),
                            onPressed: (){
                               Navigator.of(context)
                               .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
                                 return  SecondScreen();
                                })
                               );
                            },
                      ),
                       IconButton(
                        iconSize: 30.0,
                            icon: Icon(Icons.home, color: Colors.red,),
                            onPressed: (){
                               Navigator.of(context)
                               .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
                                 return  SecondScreen();
                                })
                               );
                            },
                      ),
                       IconButton(
                        iconSize: 30.0,
                            icon: Icon(Icons.favorite, color: Colors.red,),
                            onPressed: (){
                               Navigator.of(context)
                               .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
                                 return  SecondScreen();
                                })
                               );
                            },
                      ),
                       IconButton(
                        iconSize: 30.0,
                            icon: Icon(Icons.favorite, color: Colors.red,),
                            onPressed: (){
                               Navigator.of(context)
                               .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
                                 return  SecondScreen();
                                })
                               );
                            },
                      ),      
                    ],*/
            ),
          ),
        );
      },
      barrierDismissible: true,
      context: context,
      barrierLabel: '',
      transitionDuration: Duration(milliseconds: 300),
      pageBuilder: (context, animation1, animation2) {},
    );
  }
}
