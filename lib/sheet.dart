import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'admin_dasboard.dart';

class Upload_data extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Admin_dash()),
          );
        },
        child: Icon(Icons.arrow_forward),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Sheet_Layout(),
    );
  }
}

class Sheet_Layout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                "Upload Data Here",
                style: TextStyle(fontFamily: "Bebas", fontSize: 50),
              ),
            ],
          ),
          File_name(),
          Add_files(),
        ],
      ),
    );
  }
}

class File_name extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Uploaded_file(),
      ],
    );
  }
}

class Uploaded_file extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(
          top: 25,
        ),
        child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.06,
            color: Colors.limeAccent,
            child: Center(
              child: Text("Uploaded File name appears here"),
            )));
  }
}

class Add_files extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 30),
        child: Container(
            width: MediaQuery.of(context).size.width * 0.4,
            height: MediaQuery.of(context).size.height * 0.05,
            color: Colors.black,
            child: RaisedButton(
              color: Colors.black,
              onPressed: () {
                FilePicker.getFile();
              },
              child:
                  Text("Add more Files", style: TextStyle(color: Colors.white)),
            )));
  }
}
