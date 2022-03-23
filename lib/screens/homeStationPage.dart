import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uma_radio_campus/screens/about.dart';
import 'package:uma_radio_campus/screens/allStationPage.dart';
import 'package:uma_radio_campus/screens/favorisStationPage.dart';
import 'package:uma_radio_campus/screens/newStationPage.dart';
import 'package:uma_radio_campus/utils/colorsApp.dart';
import 'package:uma_radio_campus/utils/languageFile.dart';
import 'package:uma_radio_campus/utils/route.dart';

import 'package:uma_radio_campus/widgets/presisteBottomBar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

bool francaisOuAnglais = false;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            LanguageFiles.titleAppText,
            style: TextStyle(color: ColorsApp.substileColors),
          ),
          actions: [
            PopupMenuButton(
              itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                PopupMenuItem(
                  value: "fr",
                  child: Text(francaisOuAnglais
                      ? LanguageFiles.langueTextFr
                      : LanguageFiles.langueTextEn),
                  height: 30.0,
                  enabled: false,
                ),
                
                PopupMenuItem(
                  value: "fr",
                  textStyle: TextStyle(color: Colors.black),
                  child: Text("Français"),
                  height: 30.0,
                  enabled: true,
                ),
                PopupMenuItem(
                  value: "en",
                  textStyle: TextStyle(color: Colors.black),
                  child: Text("Anglais"),
                  height: 30.0,
                  enabled: true,
                ),
             
                PopupMenuItem(
                  value: "apropos",
                  textStyle: TextStyle(color: Colors.black),
                  child: Text("À-Propos"),
                  height: 30.0,
                  enabled: true,
                ),
                PopupMenuItem(
                  value: "exit",
                  textStyle: TextStyle(color: Colors.black),
                  child: Text("Quitter"),
                  height: 30.0,
                  enabled: true,
                ),
              ],
              onSelected: (value) {
                if (value == "fr") setState(() {francaisOuAnglais = true;});
                if (value == "en")setState(() {francaisOuAnglais = false;});
                if (value == "apropos") pushNewPage(About(), context);
                if (value == "exit") SystemNavigator.pop();
              },
              tooltip: "À-Propos",
            ),
          ],
          bottom: TabBar(
            indicatorColor: Color(0xFFF1304D),
            labelColor: Color(0xFFF1304D),
            unselectedLabelColor: Color(0xFF646D78),
            labelStyle: TextStyle(fontSize: 20.0),
            tabs: <Widget>[
              Tab(
                text: francaisOuAnglais
                    ? LanguageFiles.allStationTextFr
                    : LanguageFiles.allStationTextEn,
              ),
              Tab(
                text: francaisOuAnglais
                    ? LanguageFiles.favorisTextFr
                    : LanguageFiles.favorisTextEn,
              ),
              Tab(
                text: francaisOuAnglais
                    ? LanguageFiles.newStationTextFr
                    : LanguageFiles.newStationTextEn,
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            AllStationPage(),
            FavorisStationPage(),
            NewStationPage(),
          ],
        ),
        persistentFooterButtons: [
          PersisBottomBarWidget(),
        ],
      ),
    );
  }
}
