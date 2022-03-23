import 'package:flutter/material.dart';
import 'package:uma_radio_campus/screens/splashScreen.dart';
import 'package:uma_radio_campus/utils/colorsApp.dart';

void main() => runApp(MaterialApp(
      home: SplashScreen(),
      theme: ThemeData(
          appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(
              color: ColorsApp.actionColors,
            )
          ),
          primaryColor: ColorsApp.primaryColors,
          canvasColor: ColorsApp.primaryColors),
          debugShowCheckedModeBanner: false,
    ));
