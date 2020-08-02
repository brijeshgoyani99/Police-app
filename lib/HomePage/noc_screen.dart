import 'package:flutter/material.dart';

class NocScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Noc Screen'),
      ),
      body: Center(
        child: RaisedButton(
          color: Colors.white,
          child: Text('Go back to Home page'),
          onPressed: () {
            //Use`Navigator` widget to pop oir go back to previous route / screen
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
