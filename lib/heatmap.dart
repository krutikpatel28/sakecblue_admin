import 'package:flutter/material.dart';

class heatmap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Travel"),
        elevation: 0.0,
        leading: Icon(
          Icons.arrow_back,
        ),
      ),
      body: maplayout(),
    );
  }
}

class maplayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          mapbox(),
          destination_input(),
          sugesstions(),
        ],
      ),
    );
  }
}

class mapbox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.4,
      child: RaisedButton(
        onPressed: () {
          //link page here
        },
        child: Text("Heat Map apperas here"),
        elevation: 5.0,
        color: Colors.redAccent,
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}

class destination_input extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.16,
        child: RaisedButton(
          onPressed: () {
            //link page here
          },
          child: Text(
            "Source & Destination Buttons here",
          ),
          elevation: 5.0,
          color: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}

class sugesstions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.22,
        child: RaisedButton(
          onPressed: () {
            //link page here
          },
          child: Text(
            "sugesstions appear  here",
          ),
          elevation: 5.0,
          color: Colors.greenAccent,
          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}
