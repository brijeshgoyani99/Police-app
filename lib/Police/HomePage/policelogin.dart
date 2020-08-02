import 'package:exflut2/Police/HomePage/policehomepage.dart';
import "package:flutter/material.dart";
//import 'signup.dart';
import 'package:http/http.dart' as http;
import 'homepage.dart';
import 'dart:convert';

class PoliceLogin extends StatelessWidget {
  BoxDecoration decoration = BoxDecoration(
      border:
          Border(bottom: BorderSide(color: Colors.blueGrey[700], width: 10.0)));

  TextStyle CustomTextStyle() {
    return TextStyle(color: Colors.white30, fontSize: 15.0);
  }

  Widget CustomSizeBox({double height}) {
    return SizedBox(
      height: 30.0,
    );
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _autoValidate = false;

  FocusNode emailNode = FocusNode();
  FocusNode passawordNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(new FocusNode()),
      child: Scaffold(
          backgroundColor: Colors.black45,
          body: SingleChildScrollView(child: LoginPage())),
    );
  }
}

class LoginPage extends StatefulWidget {
  createState() => LoginState();
}

class LoginState extends State<LoginPage> {

  final passwordget = TextEditingController();
  final phonenoget = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _autoValidate = false;
  bool loading = false;
  FocusNode emailNode;
  FocusNode passawordNode;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    passawordNode = FocusNode();
    emailNode = FocusNode();
    loading = false;
  }

  BoxDecoration decoration = BoxDecoration(
      border: Border(
          bottom: BorderSide(
              //color: Colors.blueGrey[700],
              width: 1.0)));

  TextStyle CustomTextStyle() {
    return TextStyle(color: Colors.greenAccent, fontSize: 15.0);
  }

  InputDecoration CustomTextDecoration({String text, IconData icon}) {
    return InputDecoration(
      labelStyle: TextStyle(color: Colors.white),
      labelText: text,
      counterStyle: TextStyle(color: Colors.orangeAccent),
      prefixIcon: Icon(icon, color: Colors.deepOrange),
      fillColor: Colors.white,
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0), gapPadding: 10.0),

      /*errorBorder: UnderlineInputBorder(
          borderSide: BorderSide(
              color: Colors.white70
          )
      ),*/
    );
  }

  Widget CustomSizeBox({double height}) {
    return SizedBox(
      height: height,
    );
  }

  Widget LoginButton(BuildContext context) {
    return new SizedBox(
      height: 45.0,
      width: double.infinity,
      child: new RaisedButton(
        color: Colors.blueAccent,
        splashColor: Colors.red,
        shape: StadiumBorder(side: BorderSide(color: Colors.yellowAccent)),
        animationDuration: Duration(seconds: 2),
        child: Text(
          "Login",
          style: TextStyle(color: Colors.white70),
        ),
        onPressed: () =>  userLogin(context)
//          Navigator.of(context).push(PageRouteBuilder(
//              opaque: false,
//              barrierDismissible: true,
//              barrierColor: Colors.white12,
//              pageBuilder: (context,_,__){
//                return Center(
//                  child: Container(
//                    height: 200.0,
//                    width: 200.0,
//                    decoration: BoxDecoration(
//                      color: Colors.white,
//                      borderRadius: BorderRadius.circular(5.0)
//                    ),
//                  )
//                );
//              }
//          ));



      ),
    );
  }

  Widget LoginUi() {
    return Stack(
      //fit: StackFit.expand,
      children: <Widget>[
        Image(
          image: AssetImage("assets/background.png"),
          //width: 100000.0,
          //height: 1000.0,
          //color: Colors.blueAccent,
          colorBlendMode: BlendMode.darken,
          fit: BoxFit.fill,
        ),
        Form(
          key: _formKey,
          autovalidate: _autoValidate,
          child: Column(
            children: <Widget>[
              CustomSizeBox(height: 40.0),
              Container(
                height: 250.0,
                child: Image.asset("assets/police.png"),
              ),
              SizedBox(height: 80.0, width: 80.0),
              Container(
                //height: 50,
                padding: EdgeInsets.only(top: 50),
                child: Column(
                  children: <Widget>[
                    Center(
                        child: TextFormField(
                      enabled: true,
                      enableInteractiveSelection: true,
                      keyboardType: TextInputType.phone,

                      textInputAction: TextInputAction.next,
                      style: TextStyle(color: Colors.lightBlueAccent),
                      decoration: CustomTextDecoration(
                        icon: Icons.person,
                        text: "Police Id",
                      ),
                          controller: phonenoget,
                      textCapitalization: TextCapitalization.none,
                      /*onFieldSubmitted: (term){
                    emailNode.unfocus();
                    FocusScope.of(context).requestFocus(passawordNode);
                  },*/
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter phoneNo';
                        } else if (value.length > 11) {
                          return "Plase enter valid phoneNO";
                        }
                      },
                    )),
                    TextFormField(
                      enabled: true,
                      enableInteractiveSelection: true,
                      obscureText: true,
                      textInputAction: TextInputAction.done,
                      style: CustomTextStyle(),
                      focusNode: passawordNode,
                      controller: passwordget,
                      decoration: CustomTextDecoration(
                          icon: Icons.lock, text: "Password"),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter password';
                        } else if (value.length < 6) {
                          return 'Password must be 6 digit';
                        }
                      },
                    ),
                    CustomSizeBox(height: 20.0),
                    LoginButton(context),
                    CustomSizeBox(height: 30.0),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        "Forgot password ?",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(padding: EdgeInsets.all(10.0)),
                  Container(
                    child: Text(
                      "Don't have an Account? SignUp",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(color: Colors.deepPurple),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                  ),
                  RaisedButton(
                      //colorBrightness: Brightness.light,
                      color: Colors.blueAccent,
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20.0,
                          color: Colors.white,
                          //foreground: Paint()..shader=linearGradient),
                        ),
                      ),
                      splashColor: Colors.red,
                      shape: const StadiumBorder(
                        side: BorderSide(color: Colors.green),
                      ),
                      elevation: 4.0,
                      //onPressed: initState,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                            //  return signup();
                            },
                          ),
                        );
                      }),
                ],
              )
            ],
          ),
        )
      ],
    );
  }

  Widget LoadingIndicator() {
    return Positioned(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white12,
        child: Center(
          child: SizedBox(
            height: 50.0,
            width: 50.0,
            child: CircularProgressIndicator(strokeWidth: 0.7),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[LoginUi(), loading ? LoadingIndicator() : Container()],
    );
  }

  Future userLogin(BuildContext context) async{

    String password = passwordget.text;
    String phoneno = phonenoget.text;


    var url = 'https://gpolice.000webhostapp.com/police_login.php';

    // Store all data with Param Name.
    var data = {"password": password,"police_id": phoneno};

    // Starting Web API Call.
    var response = await http.post(url, body: data);

    // Getting Server response into variable.
    var message = jsonDecode(response.body);

    //return message;
    FocusScope.of(context).requestFocus(new FocusNode());
    if (message != '') {
      setState(() {
        loading = true;
      });
      Future.delayed(Duration(seconds: 2), () {
        setState(() {
          loading = false;
        });
        Scaffold.of(context).showSnackBar(new SnackBar(
          content: new Text("Login success"),
        ));
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return PoliceHomepage();
            },
          ),
        );

      });
    } else {
      setState(() {
        _autoValidate = true;
      });
    }
  }


}

