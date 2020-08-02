import 'package:flutter/foundation.dart';
import "package:flutter/material.dart";
import 'package:exflut2/homepage.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class MissingPerson extends StatelessWidget {
  //var _formkey=GlobalKey<FormState>();

  final fnameget = TextEditingController();
  final mnameget = TextEditingController();
  final lnameget = TextEditingController();
  final dobget = TextEditingController();
  final addressget = TextEditingController();
  final pincodeget = TextEditingController();
  final cityget = TextEditingController();
  final phonenoget = TextEditingController();
  final c_placeget = TextEditingController();
  final c_timeget = TextEditingController();
  final c_dateget = TextEditingController();
  final no_of_susget = TextEditingController();
  final s_weaponget = TextEditingController();
  final s_vehicleget = TextEditingController();
  final s_faceget = TextEditingController();
  final seenget = TextEditingController();
  final s_nameget = TextEditingController();
  final s_ageget = TextEditingController();
  final s_heightget = TextEditingController();
  final s_hairget = TextEditingController();
  final s_bodyget = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
     appBar: AppBar(
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
      backgroundColor: Colors.white,
        title: Text("Missing Person",
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
                  padding: EdgeInsets.only(top:25),
                ),
                Text("MISSING PERSON DETAILS",style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,

                ),),
                
                Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "First Name",
                          fillColor: Colors.green,
                          labelStyle: TextStyle(
                            color: Colors.teal,
                          ),
                          prefixIcon: Padding(
                            padding: const EdgeInsetsDirectional.only(end: 8.0),
                            child: Icon(Icons.person,color: Colors.teal,),
                          ),
                        ),
                        keyboardType: TextInputType.text,
                        controller: fnameget,
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter First name';
                          }
                        },
                      ),
                      TextFormField(
                          decoration: InputDecoration(
                          labelText: "Middle name",
                          labelStyle: TextStyle(
                            color: Colors.teal,
                          ),
                          fillColor: Colors.black87,
                          prefixIcon: Padding(
                          padding: const EdgeInsetsDirectional.only(end: 8.0),
                          child: Icon(Icons.person,color: Colors.teal,),
                          ),
                        ),
                        keyboardType: TextInputType.text,
                        controller: mnameget,
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                            if (value.isEmpty) {
                            return 'Please enter Your middle name';
                          }
        
                        },
                      ),

                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Last name",
                          labelStyle: TextStyle(
                            color: Colors.teal,
                          ),
                          fillColor: Colors.black87,
                          prefixIcon: Padding(
                            padding: const EdgeInsetsDirectional.only(end: 8.0),
                            child: Icon(Icons.person,color: Colors.teal,),
                          ),
                        ),
                        keyboardType: TextInputType.text,
                        controller: lnameget,
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter Your last name';
                          }

                        },
                      ),
                      TextFormField(
                          decoration: InputDecoration(
                          labelText: "DOB",
                          fillColor: Colors.black87,
                          labelStyle: TextStyle(
                            color: Colors.teal,
                          ),
                          hintText: "e.g. yyyy/mm/dd",
                          hintStyle: TextStyle(
                            color: Colors.black45,
                          ),
                          prefixIcon: Padding(
                          padding: const EdgeInsetsDirectional.only(end: 8.0),
                          child: Icon(Icons.calendar_today,color: Colors.teal,),
                          ),
                        ),
                        keyboardType: TextInputType.text,
                        controller: dobget,
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter DOB';
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
                            child: Icon(Icons.home,color: Colors.teal,),
                          ),
                        ),
                        keyboardType: TextInputType.text,
                        controller: addressget,
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter Address';
                          }
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Pincode",
                          labelStyle: TextStyle(
                            color: Colors.teal,
                          ),
                          fillColor: Colors.black87,
                          prefixIcon: Padding(
                            padding: const EdgeInsetsDirectional.only(end: 8.0),
                            child: Icon(Icons.home,color: Colors.teal,),
                          ),
                        ),
                        keyboardType: TextInputType.number,
                        controller: pincodeget,
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter pincode';
                          } else if (value.length == 6) {
                            return 'Please Enter Valid pincode';
                          }
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "City",
                          labelStyle: TextStyle(
                            color: Colors.teal,
                          ),
                          fillColor: Colors.black87,
                          prefixIcon: Padding(
                            padding: const EdgeInsetsDirectional.only(end: 8.0),
                            child: Icon(Icons.location_city,color: Colors.teal,),
                          ),
                        ),
                        keyboardType: TextInputType.text,
                        controller: cityget,
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter City';
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
                            child: Icon(Icons.phone,color: Colors.teal),
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
                      Text("CRIME SCENE DETAILS",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w500),),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Place",
                          labelStyle: TextStyle(
                            color: Colors.teal,
                          ),
                          fillColor: Colors.black87,
                          prefixIcon: Padding(
                            padding: const EdgeInsetsDirectional.only(end: 8.0),
                            child: Icon(Icons.location_on,color: Colors.teal,),
                          ),
                        ),
                        keyboardType: TextInputType.text,
                        controller: c_placeget,
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter Loaction';
                          } else if (value.length <=10 ) {
                            return 'Please Enter Valid Location';
                          }
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Time",
                          labelStyle: TextStyle(
                            color: Colors.teal,
                          ),
                          fillColor: Colors.black87,
                          prefixIcon: Padding(
                            padding: const EdgeInsetsDirectional.only(end: 8.0),
                            child: Icon(Icons.access_time,color: Colors.teal,),
                          ),
                        ),
                        keyboardType: TextInputType.datetime,
                        controller: c_timeget,
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter time';
                          } else if (value.length <=10 ) {
                            return 'Please Enter Valid time';
                          }
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Date",
                          labelStyle: TextStyle(
                            color: Colors.teal,
                          ),
                          hintText: "e.g. yyyy/mm/dd",
                          hintStyle: TextStyle(
                            color: Colors.black45
                          ),
                          
                          fillColor: Colors.black87,
                          prefixIcon: Padding(
                            padding: const EdgeInsetsDirectional.only(end: 8.0),
                            child: Icon(Icons.date_range,color: Colors.teal,),
                          ),
                        ),
                        keyboardType: TextInputType.text,
                        controller: c_dateget,
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter date';
                          } else if (value.length == 13) {
                            return 'Please Enter Valid date';
                          }
                        },
                      ),
                      Text("SUSPECT DETAILS(If any)",
                      style: TextStyle(
                        color:Colors.black,
                        fontSize: 18.0,
                      ),),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Number of Suspect",
                          fillColor: Colors.black87,
                          labelStyle: TextStyle(
                            color: Colors.teal,
                          ),
                          prefixIcon: Padding(
                            padding: const EdgeInsetsDirectional.only(end: 8.0),
                            child: Icon(Icons.person,color: Colors.teal,),
                          ),
                        ),
                        keyboardType: TextInputType.number,
                        controller: no_of_susget,
                        textInputAction: TextInputAction.next,
                        obscureText: false,
                        validator: (value) {
                          if (value.isEmpty) {
                            return '';
                          } 
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "weapon",
                          labelStyle: TextStyle(
                            color: Colors.teal,
                          ),
                          fillColor: Colors.black87,
                          prefixIcon: Padding(
                            padding: const EdgeInsetsDirectional.only(end: 8.0),
                            child: Icon(Icons.kitchen,color: Colors.teal,),
                          ),
                        ),
                        keyboardType: TextInputType.text,
                        controller: s_weaponget,
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "vehicle",
                          labelStyle: TextStyle(
                            color: Colors.teal,
                          ),
                          fillColor: Colors.black87,
                          prefixIcon: Padding(
                            padding: const EdgeInsetsDirectional.only(end: 8.0),
                            child: Icon(Icons.drive_eta,color: Colors.teal,),
                          ),
                        ),
                        keyboardType: TextInputType.text,
                        controller: s_vehicleget,
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "face",
                          labelStyle: TextStyle(
                            color: Colors.teal,
                          ),
                          hintText: "e.g. mask or unmask",
                          hintStyle: TextStyle(color: Colors.black45),
                          fillColor: Colors.black87,
                          prefixIcon: Padding(
                            padding: const EdgeInsetsDirectional.only(end: 8.0),
                            child: Icon(Icons.person_pin,color: Colors.teal,),
                          ),
                        ),
                        keyboardType: TextInputType.text,
                        controller: s_faceget,
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                    
                        },
                      ),
                      
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Have you seen ?(Y/N)",
                          labelStyle: TextStyle(
                            color: Colors.teal,
                          ),
                          fillColor: Colors.black87,
                          prefixIcon: Padding(
                            padding: const EdgeInsetsDirectional.only(end: 8.0),
                            child: Icon(Icons.remove_red_eye,color: Colors.teal,),
                          ),
                        ),
                        keyboardType: TextInputType.text,
                        controller: seenget,
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Name ( if known )",
                          labelStyle: TextStyle(
                            color: Colors.teal,
                          ),
                          fillColor: Colors.black87,
                          prefixIcon: Padding(
                            padding: const EdgeInsetsDirectional.only(end: 8.0),
                            child: Icon(Icons.person_pin,color: Colors.teal,),
                          ),
                        ),
                        keyboardType: TextInputType.text,
                        controller: s_nameget,
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Age ( approx..)",
                          labelStyle: TextStyle(
                            color: Colors.teal,
                          ),
                          fillColor: Colors.black87,
                          prefixIcon: Padding(
                            padding: const EdgeInsetsDirectional.only(end: 8.0),
                            child: Icon(Icons.remove_red_eye,color: Colors.teal,),
                          ),
                        ),
                        keyboardType: TextInputType.text,
                        controller: s_ageget,
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "height",
                          labelStyle: TextStyle(
                            color: Colors.teal,
                          ),
                          hintText: "e.g. 5.5 feet",
                          hintStyle: TextStyle(color: Colors.black45),
                          fillColor: Colors.black87,
                          prefixIcon: Padding(
                            padding: const EdgeInsetsDirectional.only(end: 8.0),
                            child: Icon(Icons.person_pin,color: Colors.teal,),
                          ),
                        ),
                        keyboardType: TextInputType.number,
                        controller: s_heightget,
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "hair color",
                          labelStyle: TextStyle(
                            color: Colors.teal,
                          ),
                          fillColor: Colors.black87,
                          prefixIcon: Padding(
                            padding: const EdgeInsetsDirectional.only(end: 8.0),
                            child: Icon(Icons.person_pin,color: Colors.teal,),
                          ),
                        ),
                        keyboardType: TextInputType.text,
                        controller: s_hairget,
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Body",
                          labelStyle: TextStyle(
                            color: Colors.teal,
                          ),
                          hintText: "e.g. Slim",
                          
                          hintStyle: TextStyle(color: Colors.black45),
                          fillColor: Colors.black,
                          prefixIcon: Padding(
                            padding: const EdgeInsetsDirectional.only(end: 8.0),
                            child: Icon(Icons.person_pin,color: Colors.teal,),
                          ),
                        ),
                        keyboardType: TextInputType.text,
                        controller: s_bodyget,
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          
                        },
                      ),
                      RaisedButton(
                        onPressed: ()=> userLogin(context)
                       ,
                        child: Text(
                          "Submit",
                        ),
                        elevation: 5.0,
                        splashColor: Colors.deepOrange,
                        color: Colors.blue,
                        shape: StadiumBorder(
                        side: BorderSide(width: 2.0)
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ),
          ] 
          ,
        ),
      );
  }
  Future userLogin(BuildContext context) async {
    String fname = fnameget.text;
    String mname = mnameget.text;
    String lname = lnameget.text;
    String dob = dobget.text;
    String address = addressget.text;
    String pincode = pincodeget.text;
    String city = cityget.text;
    String phoneno = phonenoget.text;
    String c_place = c_placeget.text;
    String c_time = c_timeget.text;
    String c_date = c_dateget.text;
    String no_of_sus = no_of_susget.text;
    String s_weapon = s_weaponget.text;
    String s_vehicle = s_vehicleget.text;
    String s_face = s_faceget.text;
    String seen = seenget.text;
    String s_name = s_nameget.text;
    String s_age = s_ageget.text;
    String s_height = s_heightget.text;
    String s_hair = s_hairget.text;
    String s_body = s_bodyget.text;





    //String password = passwordController.text;

    // SERVER LOGIN API URL
    // https://gpolice.000webhostapp.com/upload_data.php?phoneno=1245789632&&email=pk@gmail.com
    var url = 'https://gpolice.000webhostapp.com/missing_data.php';

    // Store all data with Param Name.
    var data = {
      "fname": fname,
      "mname": mname,
      "lname": lname,
      "dob": dob,
      "address": address,
      "pincode": pincode,
      "city": city,
      "phoneno": phoneno,
      "c_place": c_place,
      "c_time": c_time,
      "c_date": c_date,
      "no_of_sus": no_of_sus,
      "s_weapon": s_weapon,
      "s_vehicle": s_vehicle,
      "s_face": s_face,
      "seen": seen,
      "s_name": s_name,
      "s_age": s_age,
      "s_height": s_height,
      "s_hair": s_hair,
      "s_body": s_body

    };

    // Starting Web API Call.
    var response = await http.post(url, body: data);

    // Getting Server response into variable.
    var message = jsonDecode(response.body);

    //return message;
  //  if(_formKey.currentState.validate()){
      Navigator.push(
        context, MaterialPageRoute(builder: (context) {
        return MyHomePage(title: 'All Section');},),);
    //};

  }

}
