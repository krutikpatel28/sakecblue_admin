import 'package:flutter/material.dart';

class Details extends StatelessWidget {
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
      body: Detail_Layout(),
    );
  }
}

class Detail_Layout extends StatelessWidget {
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
          Detail_Image(),
          Data(),
          //Add_Button(),
        ],
      ),
    );
  }
}

class Data extends StatelessWidget {
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

class Detail_Image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image(image: AssetImage('images/details.png'));
  }
}

// class Add_Button extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: <Widget>[
//         Align(
//           alignment: Alignment.bottomLeft,
//           child: FloatingActionButton(
//             backgroundColor: Colors.black,
//             child: Icon(Icons.add),
//             onPressed: () {
//               //link here
//             },
//           ),
//         ),
//       ],
//     );
//   }
// }
