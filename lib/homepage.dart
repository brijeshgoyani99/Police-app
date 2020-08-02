import 'package:exflut2/Drawer/history.dart';
import 'package:exflut2/Drawer/profile.dart';
import 'package:exflut2/Police/HomePage/homepage.dart';
import 'package:exflut2/Police/HomePage/noc_request.dart';
import 'package:exflut2/Police/HomePage/policehomepage.dart';
import 'package:exflut2/app_theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'second_screen.dart';
import 'HomePage/appointment_screen.dart';
import 'HomePage/noc_screen.dart';
import 'HomePage/helpline_screen.dart';
import 'HomePage/message_screen.dart';
import 'Dialog/fir_dialog.dart';
import 'Dialog/noc_dialog.dart';
//import 'package:flutter/src/material/material.dart';
//import 'package:flutter/src/rendering/box.dart';
//import 'package:http/http.dart' as http;
//import 'dart:convert';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final topAppBar = AppBar(
      //  elevation: 0.1,
      elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
      backgroundColor: Colors.white,
      //fromRGBO(58, 66, 86, 1.0),
      //primarySwatch: Colors.pink,
      title: Text(widget.title,
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

    final myDrawer = Drawer(
    
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.brown,
              child: Text("BG"),
            ),
            accountName: Text("Brijesh Goyani",style: TextStyle(fontFamily: 'Montserrat',fontSize: 16.0,fontWeight: FontWeight.w700),),
            accountEmail: Text("8690586753"),
            onDetailsPressed: (){
               Navigator.of(context)
                               .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
                                 return  Profile();
                                })
                               );
            },
            
          ),
          ListTile(
              title: Text("Home", style: TextStyle(fontWeight: FontWeight.w600)),
              leading: Icon(Icons.home, color: Colors.black),
              onTap: () {
                Navigator.pop(context);
              }),
          ListTile(
              title: Text("About", style: TextStyle(fontWeight: FontWeight.w600)),
              leading: Icon(Icons.face, color: Colors.black),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute<Null>(builder: (BuildContext context) {
                  return Request();
                }));
              }),
          ListTile(
              title: Text("History", style: TextStyle(fontWeight: FontWeight.w600)),
              leading: Icon(Icons.history, color: Colors.black),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute<Null>(builder: (BuildContext context) {
                  return History();
                }));
              }),
          ListTile(
              title: Text("Help", style: TextStyle(fontWeight: FontWeight.w600)),
              leading: Icon(Icons.help, color: Colors.black),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute<Null>(builder: (BuildContext context) {
                  return PoliceHomepage();
                }));
              }),
          ListTile(
              title: Text("Setting", style: TextStyle(fontWeight: FontWeight.w600)),
              leading: Icon(Icons.settings, color: Colors.black),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute<Null>(builder: (BuildContext context) {
                  return NocScreen();
                }));
              }),
          Divider(),
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );

    final makeBottom = Container(
      height: 55.0,
      child: BottomAppBar(
        color: Color.fromRGBO(58, 66, 86, 1.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.blur_on, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.hotel, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.account_box, color: Colors.white),
              onPressed: () {},
            )
          ],
        ),
      ),
    );

    /* Widget dialog(){
       showGeneralDialog(
                  barrierColor: Colors.black.withOpacity(0.5),
                  transitionBuilder: (context,a1,a2,widget){
                    return Transform.scale(
                      scale: a1.value,
                      child: Opacity(
                        opacity: a1.value,
                        child: AlertDialog(
                          shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16.0)
                          ),                       
                    title: Column(
                      children: <Widget>[
                        Container(
                          child: IconButton(
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
                        ),
                      ],
                    ),
                  ),
                      ),
                    );
                  },

                  barrierDismissible: true,
                  context: context,
                  barrierLabel: '',
                  transitionDuration: Duration(milliseconds: 200),
                  pageBuilder: (context, animation1, animation2){},
                );
    }*/

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
              onPressed: () async {
                // dialog();
                FirDialogs fd = new FirDialogs();
                await fd.firdialog(context);
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
              onPressed: () async {
                NocDialogs nd = new NocDialogs();
                await nd.nocdialog(context);
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

    Widget buildButton4(IconData icon, String buttonTitle) {
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
                  return MessageScreen();
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

    Widget buildButton5(IconData icon, String buttonTitle) {
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
                  return HelplineScreen();
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

    Widget buildButton6(IconData icon, String buttonTitle) {
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
                  return NocScreen();
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
          buildButton1(Icons.chrome_reader_mode, "FIR"),
          buildButton2(Icons.home, "Appointment"),
          buildButton3(Icons.settings, "NOC")
        ],
      ),
    );

    Widget buttonSection2 = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          // Text("Button 1",style: TextStyle(fontSize: 16.0),),
          buildButton4(Icons.message, "Message"),
          buildButton5(Icons.phone_in_talk, "Helpline number"),
          buildButton6(Icons.local_hotel, "Police\nNumber")
        ],
      ),
    );

    //iconsection...
    Widget iconsection = new Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            child: IconButton(
              iconSize: 60.0,
              icon: PictureWidget(),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute<Null>(builder: (BuildContext context) {
                  return SecondScreen();
                }));
              },
            ),
          ),
        ],
      ),
    );

    return Scaffold(
      appBar: topAppBar,
      drawer: myDrawer,

      body: ListView(
        children: <Widget>[
          buttonSection1,
          buttonSection2,
          // iconsection,
          //buttonSection,

          //datafetch...
          /*  FutureBuilder(
        future: getMethod(),
        builder: (BuildContext context, AsyncSnapshot snapshot){
          List snap = snapshot.data;

          if(snapshot.connectionState == ConnectionState.waiting){
            return Center(
              child: CircularProgressIndicator(),
            );
          }
         if(snapshot.hasError){
            return Center(child: Text("Error fetching data..."),
            );
          }

          return ListView.builder(
            itemCount: snap.length,
            itemBuilder: (context,index){
              return ListTile(
                title: Text("user id:${snap[index]['id']}"),
                subtitle: Text("password:${snap[index]['password']}"),
              );
            },
          );
        },
      ),*/
        ],
      ),

      //animated button...
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        overlayColor: Colors.amberAccent,
        overlayOpacity: 0.5,
        curve: Curves.bounceIn,
        children: [
          SpeedDialChild(
            child: Icon(Icons.ac_unit),
            label: "Setting",
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute<Null>(builder: (BuildContext context) {
                return SecondScreen();
              }));
            },
            //onTap: () => print("First...")
          ),
          SpeedDialChild(
              child: Icon(Icons.accessibility_new),
              label: "History",
              onTap: () => print("second...")),
        ],
      ),
      //  bottomNavigationBar: makeBottom,
    );
  }
}

class PictureWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ImageIcon(
      AssetImage('assets/GBM Logo.png'),
      color: Colors.red,
      size: 60.0,
    );
  }
}
