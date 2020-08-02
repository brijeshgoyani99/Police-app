import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body:  Container(
        child: Row(
         // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                child: Text("BG"),
               // minRadius: 20,
          maxRadius: 40,

              ),
            ),
               Column(
                children: <Widget>[
                   Padding(
              padding: EdgeInsets.all(10.0),
            ),
                  Text("Brijesh Goyani"),
                  Text("8690586753")
                ],
              ),
            
          ],
        ),
        
     /*   child: RaisedButton(
          color: Colors.red,
          child: Text('Go back to First Screen'),
          onPressed: () {
            //Use`Navigator` widget to pop oir go back to previous route / screen
            Navigator.pop(context);
          },
        ),*/
      ),
    );
  }
}