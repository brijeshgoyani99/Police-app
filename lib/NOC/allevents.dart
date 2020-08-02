import 'package:flutter/foundation.dart';
import "package:flutter/material.dart";

import 'package:exflut2/homepage.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
//import 'package:police_application/Login.dart';

class Event extends StatelessWidget {
  //var _formkey=GlobalKey<FormState>();

  final e_typeget = TextEditingController();
  final e_nameget = TextEditingController();
  final e_addressget = TextEditingController();
  final phonenoget = TextEditingController();
  final e_start_timeget = TextEditingController();
  final e_end_timeget = TextEditingController();
  final e_start_dateget = TextEditingController();
  final e_end_dateget = TextEditingController();
  final e_org_nameget = TextEditingController();
  final max_peopleget = TextEditingController();
  final pincodeget = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
        backgroundColor: Colors.white,
        title: Text("Events",
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w700),
            textAlign: TextAlign.center),
        centerTitle: true,
        iconTheme: new IconThemeData(color: Colors.black),
      ),
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: false,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 20),
                ),
                Text(
                  "Noc for all type of Events",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20.0,
                  ),
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Event Name",
                          fillColor: Colors.green,
                          labelStyle: TextStyle(
                            color: Colors.teal,
                          ),
                          hintText:
                              "e.g. Late night, Social, public festival celebration...",
                          prefixIcon: Padding(
                            padding: const EdgeInsetsDirectional.only(end: 8.0),
                            child: Icon(
                              Icons.event,
                              color: Colors.teal,
                            ),
                          ),
                        ),
                        keyboardType: TextInputType.text,
                        controller: e_nameget,
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter Event name';
                          }
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Address",
                          labelStyle: TextStyle(
                            color: Colors.teal,
                          ),
                          fillColor: Colors.black87,
                          prefixIcon: Padding(
                            padding: const EdgeInsetsDirectional.only(end: 8.0),
                            child: Icon(
                              Icons.location_on,
                              color: Colors.teal,
                            ),
                          ),
                        ),
                        keyboardType: TextInputType.text,
                        controller: e_addressget,
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter Event address';
                          }
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "pincode",
                          fillColor: Colors.black87,
                          labelStyle: TextStyle(
                            color: Colors.teal,
                          ),
                          prefixIcon: Padding(
                            padding: const EdgeInsetsDirectional.only(end: 8.0),
                            child: Icon(
                              Icons.calendar_today,
                              color: Colors.teal,
                            ),
                          ),
                        ),
                        keyboardType: TextInputType.number,
                        controller: pincodeget,
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter pincode';
                          }
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Owner/Secretary name",
                          fillColor: Colors.black87,
                          labelStyle: TextStyle(
                            color: Colors.teal,
                          ),
                          prefixIcon: Padding(
                            padding: const EdgeInsetsDirectional.only(end: 8.0),
                            child: Icon(
                              Icons.person,
                              color: Colors.teal,
                            ),
                          ),
                        ),
                        keyboardType: TextInputType.text,
                        controller: e_org_nameget,
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter Owner/Secretary name';
                          }
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Event Starting Time",
                          labelStyle: TextStyle(
                            color: Colors.teal,
                          ),
                          fillColor: Colors.black87,
                          prefixIcon: Padding(
                            padding: const EdgeInsetsDirectional.only(end: 8.0),
                            child: Icon(
                              Icons.access_time,
                              color: Colors.teal,
                            ),
                          ),
                        ),
                        keyboardType: TextInputType.text,
                        controller: e_start_timeget,
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter Event Time';
                          }
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Event Ending Time",
                          labelStyle: TextStyle(
                            color: Colors.teal,
                          ),
                          fillColor: Colors.black87,
                          prefixIcon: Padding(
                            padding: const EdgeInsetsDirectional.only(end: 8.0),
                            child: Icon(
                              Icons.access_time,
                              color: Colors.teal,
                            ),
                          ),
                        ),
                        keyboardType: TextInputType.text,
                        controller: e_end_timeget,
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter Event Time';
                          }
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Event type",
                          labelStyle: TextStyle(
                            color: Colors.teal,
                          ),
                          fillColor: Colors.black87,
                          prefixIcon: Padding(
                            padding: const EdgeInsetsDirectional.only(end: 8.0),
                            child: Icon(
                              Icons.event_note,
                              color: Colors.teal,
                            ),
                          ),
                        ),
                        keyboardType: TextInputType.text,
                        controller: e_typeget,
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter Event type';
                          }
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Event Start Date",
                          fillColor: Colors.black87,
                          labelStyle: TextStyle(
                            color: Colors.teal,
                          ),
                          prefixIcon: Padding(
                            padding: const EdgeInsetsDirectional.only(end: 8.0),
                            child: Icon(
                              Icons.calendar_today,
                              color: Colors.teal,
                            ),
                          ),
                        ),
                        keyboardType: TextInputType.text,
                        controller: e_start_dateget,
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter Event start date';
                          }
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Event End Date",
                          fillColor: Colors.black87,
                          labelStyle: TextStyle(
                            color: Colors.teal,
                          ),
                          prefixIcon: Padding(
                            padding: const EdgeInsetsDirectional.only(end: 8.0),
                            child: Icon(
                              Icons.calendar_today,
                              color: Colors.teal,
                            ),
                          ),
                        ),
                        keyboardType: TextInputType.text,
                        controller: e_end_dateget,
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter Event End Date';
                          }
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "people range",
                          labelStyle: TextStyle(
                            color: Colors.teal,
                          ),
                          fillColor: Colors.black87,
                          prefixIcon: Padding(
                            padding: const EdgeInsetsDirectional.only(end: 8.0),
                            child: Icon(
                              Icons.person_add,
                              color: Colors.teal,
                            ),
                          ),
                        ),
                        keyboardType: TextInputType.text,
                        controller: max_peopleget,
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter people range';
                          }
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Phone_no",
                          fillColor: Colors.black87,
                          labelStyle: TextStyle(
                            color: Colors.teal,
                          ),
                          prefixIcon: Padding(
                            padding: const EdgeInsetsDirectional.only(end: 8.0),
                            child: Icon(Icons.phone, color: Colors.teal),
                          ),
                        ),
                        keyboardType: TextInputType.phone,
                        controller: phonenoget,
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter phoneNo';
                          } else if (value.length == 10) {
                            return "Plase enter valid phoneNO";
                          }
                        },
                      ),
                      RaisedButton(
                        onPressed: () => userLogin(context)

                        /* if(_formKey.currentState.validate()){
                                Navigator.push(
                                context, MaterialPageRoute(builder: (context) {
                                return Login();},),);
                                };*/
                        ,
                        child: Text(
                          "Submit",
                        ),
                        elevation: 5.0,
                        splashColor: Colors.deepOrange,
                        color: Colors.blue,
                        shape: StadiumBorder(side: BorderSide(width: 2.0)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future userLogin(BuildContext context) async {
    String e_type = e_typeget.text;
    String e_name = e_nameget.text;
    String phoneno = phonenoget.text;
    String e_address = e_addressget.text;
    String e_start_time = e_start_timeget.text;
    String e_end_time = e_end_timeget.text;
    String e_start_date = e_start_dateget.text;
    String e_end_date = e_end_dateget.text;
    String e_org_name = e_org_nameget.text;
    String max_people = max_peopleget.text;
    String pincode = pincodeget.text;

    //String password = passwordController.text;

    // SERVER LOGIN API URL
    // https://gpolice.000webhostapp.com/upload_data.php?phoneno=1245789632&&email=pk@gmail.com
    var url = 'https://gpolice.000webhostapp.com/noc_data.php';

    // Store all data with Param Name.
    var data = {
      "e_type": e_type,
      "e_name": e_name,
      "e_address": e_address,
      "pincode": pincode,
      "phoneno": phoneno,
      "e_start_time": e_start_time,
      "e_end_time": e_end_time,
      "e_start_date": e_start_date,
      "e_end_date": e_end_date,
      "e_org_name": e_org_name,
      "max_people": max_people,
    };

    // Starting Web API Call.
    var response = await http.post(url, body: data);

    // Getting Server response into variable.
    var message = jsonDecode(response.body);

    //return message;
    //  if(_formKey.currentState.validate()){
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return MyHomePage(title: 'All Section');
        },
      ),
    );
    //};
  }
}
