import 'package:exflut2/Login.dart';
import 'package:exflut2/firstpage.dart';
import 'package:flutter/material.dart';
import 'app_theme.dart';
import 'homepage.dart';
//import 'sample.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your applicatiron.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Server',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        textTheme: AppTheme.textTheme,
      ),
      home: MyHomePage(title: 'All Section'),
      //home: Login(),
      // home: MyHomePage(title: "All Section")
      //userlogin()
    );
  }
}
