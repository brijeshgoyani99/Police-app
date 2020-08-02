
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class NocRequest extends StatefulWidget {
  @override
  _RequestState createState() => _RequestState();
}

class _RequestState extends State<NocRequest> {
  
  getMethod()async{
  String url="https://gpolice.000webhostapp.com/noc_request.php";
  var res=await http.get(Uri.encodeFull(url),headers: {"Accept":"application/json"});
  //final res=await http.get(url);
  var responsBody = json.decode(res.body);
  return responsBody;
  }

  @override
  Widget build(BuildContext context) {

    final topAppBar = AppBar(
      elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
      backgroundColor: Colors.white,
      title: Text("NOC for Events",
          style: TextStyle(
              color: Colors.black,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w700),
          textAlign: TextAlign.center),
      centerTitle: true,
      iconTheme: new IconThemeData(color: Colors.black),
    );
    
    return Scaffold(
      appBar: topAppBar,
      body:  FutureBuilder(
        future: getMethod(),
        builder: (BuildContext context, AsyncSnapshot snapshot){
          List snap = snapshot.data;

          if(snapshot.connectionState == ConnectionState.waiting){
            return Center(
              child: CircularProgressIndicator(),
            );
          }
         if(snapshot.hasError){
            return Center(child: Text("Error fetching data...\n"
                                        "Try again"),
            );
          }

          return ListView.builder(
            itemCount: snap.length,
            itemBuilder: (context,index){
            /*return ListTile(
                  title: Text("user id: ${snap[index]['id']}"),
                  subtitle: Text("password: ${snap[index]['password']}"),
                
              );*/
              return Padding(
                padding: const EdgeInsets.all(4.0),
                child: Card(
                  elevation: 5.0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                            Text("Event name: ${snap[index]['ename']}"),
                           Text("Address: ${snap[index]['add']}"),
                          Text("Pincode: ${snap[index]['pincode']}"),  
                          Text("Owner name: ${snap[index]['oname']}"),
                           Text("Event type: ${snap[index]['type']}"), 
                          Text("Event Starting time: ${snap[index]['stime']}"),
                          Text("Event Ending time: ${snap[index]['etime']}"),          
                          Text("Event Start date: ${snap[index]['sdate']}"),
                          Text("Event End date: ${snap[index]['edate']}"),
                          Text("People range: ${snap[index]['mp']}"),
                           Text("Phone no: ${snap[index]['phno']}"),
                        ],
                    ),
                  ),
                ),
              );
           /* return ListView(
                children: <Widget>[
                  Card(
                    child: Container(
                      child: Row(
                        children: <Widget>[
                        //  Text("user id: ${snap[index]['id']}"),
                         // Text("password: ${snap[index]['password']}")
                        ],
                      ),
                    ),
                  )
                ],
              );*/
            },
          );
        },
      ),
    );
  }

}
