import 'package:flutter/material.dart';

class details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          //link here
        },
        child: Icon(Icons.arrow_forward),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: detail_layout(),
    );
  }
}

class detail_layout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                "Add organisation\ndetails here",
                style: TextStyle(fontFamily: "Bebas", fontSize: 40),
              ),
            ],
          ),
          detail_image(),
          data(),
          add_button(),
        ],
      ),
    );
  }
}

class data extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 10, bottom: 10),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.08,
          color: Colors.white,
          child: RaisedButton(
            color: Colors.white,
            onPressed: () {
              //link here
            },
            child: Text("Computers"),
            elevation: 2.0,
            shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(5.0),
            ),
          ),
        ));
  }
}

class detail_image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image(image: AssetImage('images/details.png'));
  }
}

class add_button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Align(
          alignment: Alignment.bottomLeft,
          child: FloatingActionButton(
            backgroundColor: Colors.black,
            child: Icon(Icons.add),
            onPressed: () {
              //link here
            },
          ),
        ),
      ],
    );
  }
}
