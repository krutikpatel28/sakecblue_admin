import 'package:flutter/material.dart';
import 'signup.dart';

class Login_Admin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        child: Icon(Icons.arrow_forward),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Login_Layout(),
    );
  }
}

class Login_Layout extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                "Login",
                style: TextStyle(fontFamily: "Bebas", fontSize: 50),
              ),
            ],
          ),
          Email_input(),
          Password_input(),
          Google_login(),
          New_User(),
        ],
      ),
    );
  }

}

class Email_input extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: Container(
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Helvitica',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.email,
                color: Colors.black,
              ),
              hintText: 'Enter your Email',
            ),

          )
      ),
    );
  }

}

class Password_input extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Container(
        child: TextField(
          obscureText: true,
          keyboardType: TextInputType.visiblePassword,
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Helvitica',
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14.0),
            prefixIcon: Icon(
              Icons.lock,
              color: Colors.black,
            ),
            hintText: 'Enter Password',
          ),

        )
    );
  }

}

class Google_login extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.only(top: 30),
      child: Container(
          width: MediaQuery.of(context).size.width * 0.85,
          height: MediaQuery.of(context).size.height * 0.06,

          child: RaisedButton.icon(
            color: Colors.redAccent,
            onPressed: (){
              //link here
            },
            icon: Icon(Icons.timeline),
            label: Text("Login with Google"),
          )
      ),
    );
  }

}

class New_User extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

     return Padding(
      padding: EdgeInsets.only(top: 10),
      child: Container(
          width: MediaQuery.of(context).size.width * 0.85,
          height: MediaQuery.of(context).size.height * 0.06,

          child: RaisedButton.icon(
            color: Colors.grey,
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Signup_Admin()),
              );
            },
            icon: Icon(Icons.add),
            label: Text("SignUp"),
          )
      ),
    );
  }

}

