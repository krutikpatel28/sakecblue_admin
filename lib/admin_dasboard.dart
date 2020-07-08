import 'package:flutter/material.dart';

class Admin_dash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {},
        child: Icon(Icons.arrow_forward),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Dashboard_Layout(),
    );
  }
}

class Dashboard_Layout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                "Dashboard",
                style: TextStyle(fontFamily: "Bebas", fontSize: 45),
              ),
            ],
          ),
          //date start
          Container(
              child: Align(
            alignment: Alignment.centerRight,
            child: RaisedButton.icon(
              color: Colors.white,
              onPressed: () {
                //date picker here
              },
              icon: Icon(Icons.date_range),
              label: Text("Date"),
            ),
          )),
          //date end
          //text and graph row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Left_text(),
              Right_graph(),
            ],
          )
        ],
      ),
    );
  }
}

class Left_text extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
      child: Container(
          width: MediaQuery.of(context).size.width * 0.33,
          height: MediaQuery.of(context).size.height * 0.25,
          color: Colors.lightGreenAccent,
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    "28",
                    style: TextStyle(fontFamily: "Bebas", fontSize: 50),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    "Confirmed",
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
              Row(
                children: <Widget>[Text("\nHigh Risk\nMed Risk\nLow Risk")],
              )
            ],
          )),
    );
  }
}

class Right_graph extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.53,
        height: MediaQuery.of(context).size.height * 0.25,
        child: RaisedButton(
          onPressed: () {
            //link page here
          },
          child: Text("Right sample Graph"),
          elevation: 0.0,
          color: Colors.limeAccent,
          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(5.0),
          ),
        ),
      ),
    );
  }
}
