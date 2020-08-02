import 'dart:developer';

import "package:flutter/material.dart";
import 'Login.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class signup extends StatelessWidget {
  var _formkey = GlobalKey<FormState>();
  // final emailget = TextEditingController();
  final phonenoget = TextEditingController();
  final unameget = TextEditingController();
  final pwdget = TextEditingController();
  final aadhar_noget = TextEditingController();

  //final emailget= TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Stack(
          children: <Widget>[
            Image(
              image: AssetImage("assets/background.png"),
              colorBlendMode: BlendMode.darken,
              fit: BoxFit.cover,
            ),
            Container(
              height: 250,
              width: 250,
              padding: EdgeInsets.only(top: 15),
              child: Image(
                //alignment: Alignment(6, 300),
                image: AssetImage("assets/police.png"),
                //Image.asset("images/police.png",height:250),
              ),
            ),
            SingleChildScrollView(
                child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 350),
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "UserName",
                          fillColor: Colors.black87,
                          prefixIcon: Padding(
                            padding: const EdgeInsetsDirectional.only(end: 8.0),
                            child: Icon(Icons.person),
                          ),
                        ),
                        controller: unameget,
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter the username';
                          } else if (value.length > 15) {
                            return 'Please Enter valid username';
                          }
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Phone_no",
                          fillColor: Colors.black87,
                          prefixIcon: Padding(
                            padding: const EdgeInsetsDirectional.only(end: 8.0),
                            child: Icon(Icons.phone),
                          ),
                        ),
                        controller: phonenoget,
                        keyboardType: TextInputType.phone,
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter phoneNo';
                          } else if (value.length == 10) {
                            return "Plase enter valid phoneNO";
                          }
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Aadhar no",
                          fillColor: Colors.black87,
                          prefixIcon: Padding(
                            padding: const EdgeInsetsDirectional.only(end: 8.0),
                            child: Icon(Icons.perm_identity),
                          ),
                        ),
                        keyboardType: TextInputType.phone,
                        controller: aadhar_noget,
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter AadharNo';
                          } else if (value.length < 13) {
                            return 'Please Enter Valid AadharNO';
                          }
                        },
                      ),
                      /*  TextFormField(
                            decoration: InputDecoration(
                              labelText: "Date_of_Birth",
                              fillColor: Colors.black87,
                              prefixIcon: Padding(
                                padding: const EdgeInsetsDirectional.only(
                                    end: 8.0),
                                child: Icon(Icons.calendar_today),
                              ),
                            ),
                            keyboardType: TextInputType.datetime,
                            textInputAction: TextInputAction.next,
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please enter DOB';
                              } else if (value.length == 10) {
                                return 'please enter valid DOB';
                              }
                            },
                          ),*/
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Enter 8 Digit Password",
                          fillColor: Colors.black87,
                          prefixIcon: Padding(
                            padding: const EdgeInsetsDirectional.only(end: 8.0),
                            child: Icon(Icons.lock_outline),
                          ),
                        ),
                        keyboardType: TextInputType.text,
                        controller: pwdget,
                        textInputAction: TextInputAction.next,
                        obscureText: true,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter password';
                          } else if (value.length < 6) {
                            return 'Password must be 6 digit';
                          }
                        },
                      ),
                      RaisedButton(
                        onPressed: () => userLogin(context)
                        /*onPressed: () {
                              if (_formKey.currentState.validate()) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return Login();
                                    },
                                  ),
                                );
                              }
                              ;
                            },*/
                        ,
                        child: Text(
                          "Sign up",
                        ),
                        splashColor: Colors.deepOrange,
                        color: Colors.greenAccent,
                      ),
                    ],
                  ),
                ),
              ],
            ))
          ],
        ));
  }

  Future userLogin(BuildContext context) async {
    String username = unameget.text;
    String phoneno = phonenoget.text;
    String pwd = pwdget.text;
    String aadhar_no = aadhar_noget.text;

    //String password = passwordController.text;

    // SERVER LOGIN API URL
    // https://gpolice.000webhostapp.com/upload_data.php?phoneno=1245789632&&email=pk@gmail.com
    var url = 'https://gpolice.000webhostapp.com/signup.php';

    // Store all data with Param Name.
    var data = {
      "username": username,
      "phoneno": phoneno,
      "pwd": pwd,
      "aadhar_no": aadhar_no
    };

    // Starting Web API Call.
    var response = await http.post(url, body: data);

    // Getting Server response into variable.
    var message = jsonDecode(response.body);

    //return message;

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return Login();
        },
      ),
    );
  }
}
