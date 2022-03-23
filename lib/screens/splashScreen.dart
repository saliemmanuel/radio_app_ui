import 'dart:async';

import 'package:flutter/material.dart';
import 'package:uma_radio_campus/screens/homeStationPage.dart';
import 'package:uma_radio_campus/utils/colorsApp.dart';
import 'package:uma_radio_campus/utils/route.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () async {
      pushNewPageRemoveUntil(HomePage(), context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.primaryColors,
      body: Center(
        child: Stack(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.radio_rounded,
                  size: 250.0,
                  color: ColorsApp.actionColors,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Uma Radio Campus App",
                  style: TextStyle(
                      fontSize: 25.0,
                      color: ColorsApp.actionColors,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text("Par Sali Emmanuel",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: ColorsApp.substileColors,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
