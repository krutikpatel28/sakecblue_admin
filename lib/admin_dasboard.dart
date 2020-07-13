import 'package:flutter/material.dart';

class Admin_dash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Add your onPressed code here!
        },
        label: Text('Detailed Analysis'),
        icon: Icon(Icons.timeline),
        backgroundColor: Colors.black,
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
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              color: Colors.black,
              onPressed: () {
                //date picker here
              },
              icon: Icon(
                Icons.date_range,
                color: Colors.white,
              ),
              label: Text(
                "Date",
                style: TextStyle(color: Colors.white),
              ),
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
          ),
          //text and graph end
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 20, bottom: 5),
                child: Text(
                  "Risk In Campus",
                  style: TextStyle(fontFamily: "Helvitica", fontSize: 20),
                ),
              )
            ],
          ),
          // risk numbers
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              TotalriskNumbers(),
              HighriskNumbers(),
              MedriskNumbers(),
              LowriskNumbers(),
            ],
          ),

          //risk numbers end
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
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    "28",
                    style: TextStyle(fontFamily: "Bebas", fontSize: 60),
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
              Padding(
                  padding: EdgeInsets.only(top: 28),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width * 0.04,
                        height: MediaQuery.of(context).size.width * 0.04,
                        color: Colors.red,
                      ),
                      Text("\t\tHigh Risk")
                    ],
                  )),
              Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width * 0.04,
                        height: MediaQuery.of(context).size.width * 0.04,
                        color: Colors.black,
                      ),
                      Text("\t\tMed Risk")
                    ],
                  )),
              Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width * 0.04,
                        height: MediaQuery.of(context).size.width * 0.04,
                        color: Colors.blue,
                      ),
                      Text("\t\tLow Risk")
                    ],
                  ))
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
          child: Text("Graph Appears Here"),
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

class TotalriskNumbers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: Row(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * 0.2,
            height: MediaQuery.of(context).size.height * 0.1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "69",
                      style: TextStyle(fontFamily: "Bebas", fontSize: 40),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Total",
                      style: TextStyle(fontFamily: 'Bebas', fontSize: 20),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HighriskNumbers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: Row(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * 0.2,
            height: MediaQuery.of(context).size.height * 0.1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "8",
                      style: TextStyle(
                          fontFamily: "Bebas", fontSize: 40, color: Colors.red),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "High",
                      style: TextStyle(
                          fontFamily: 'Bebas', fontSize: 20, color: Colors.red),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MedriskNumbers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: Row(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * 0.2,
            height: MediaQuery.of(context).size.height * 0.1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "34",
                      style: TextStyle(fontFamily: "Bebas", fontSize: 40),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Medium",
                      style: TextStyle(fontFamily: 'Bebas', fontSize: 20),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class LowriskNumbers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: Row(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * 0.2,
            height: MediaQuery.of(context).size.height * 0.1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "27",
                      style: TextStyle(
                          fontFamily: "Bebas",
                          fontSize: 40,
                          color: Colors.blue),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Low",
                      style: TextStyle(
                          fontFamily: 'Bebas',
                          fontSize: 20,
                          color: Colors.blue),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
