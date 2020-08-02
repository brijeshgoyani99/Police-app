import 'package:flutter/material.dart';
import 'package:exflut2/FIR/missing_person.dart';

enum DialogAcion { yes, abort }

class FirDialogs {
  static const icon_size = 35.0;
  static const label_size = 12.0;
  static const icon_top_padding = 0.0;
  static const label_top_padding = 0.0;
  static const icon_color = Colors.red;
  static const Label_color = Colors.green;

  Future<DialogAcion> firdialog(
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
                  return MissingPerson();
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

    Widget buttonSection1 = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          buildButton1(Icons.chrome_reader_mode, "Missing\n""Person"),
          buildButton2(Icons.home, "     Pick\n""Pocketing"),
          buildButton3(Icons.settings, "Luggage\n"" Lifting")
        ],
      ),
    );

    Widget buttonSection2 = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          buildButton4(Icons.message, "Stolen\n""Vehicle"),
          buildButton5(Icons.phone_in_talk, "Stolen\n""Phones"),
          buildButton6(Icons.local_hotel, "Stolen\n""Vehicle")
        ],
      ),
    );

    Widget buttonSection3 = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          buildButton7(Icons.favorite, "child"),
          buildButton8(Icons.home, "Person"),
          buildButton9(Icons.settings, "Dead")
        ],
      ),
    );

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
                  buttonSection3
                ],
              ),
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
