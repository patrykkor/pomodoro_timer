import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var val = 10.0;
  var val0 = 10.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pomodoro Timer",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xff00bf06),
        centerTitle: true,
      ),
      body: DefaultTextStyle(
        style: TextStyle(color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.33,
              ),
            ),
            Text(
              "Tutaj będzie timer",
              style: TextStyle(
                fontSize: 32,
              ),
            ),
            SizedBox(height: 30.0),
            OutlineButton(
              highlightedBorderColor: Color(0xff00bf06),
              textColor: Colors.white,
              onPressed: () {},
              child: Text("PRZYCISK"),
            ),
            SizedBox(height: 30.0),
            Slider(
              value: val0,
              min: 1,
              max: 100,
              onChanged: (value) {
                setState(() {
                  val0 = value;
                });
              },
            ),
            Slider(
              value: val,
              min: 1,
              max: 100,
              onChanged: (value) {
                setState(() {
                  val = value;
                });
              },
            ),
            SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                OutlineButton(
                  highlightedBorderColor: Color(0xff00bf06),
                  textColor: Colors.white,
                  onPressed: () {},
                  child: Text("ZACZNIJ"),
                ),
                OutlineButton(
                  highlightedBorderColor: Color(0xff00bf06),
                  textColor: Colors.white,
                  onPressed: () {},
                  child: Text("STOP"),
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey[900],
    );
  }
}
