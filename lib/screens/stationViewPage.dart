import 'package:flutter/material.dart';
import 'package:uma_radio_campus/utils/colorsApp.dart';
import 'package:uma_radio_campus/utils/languageFile.dart';
import 'package:uma_radio_campus/widgets/fmListScroolWidget.dart';
import 'package:uma_radio_campus/widgets/presisteBottomBar.dart';

class StationViewPage extends StatefulWidget {
  @override
  _StationViewPageState createState() => _StationViewPageState();
}

class _StationViewPageState extends State<StationViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          LanguageFiles.titleAppText,
          style: TextStyle(color: ColorsApp.substileColors),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert_rounded),
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Container(
              height: 130.0,
              child: Center(
                child: Text(
                  "101.1",
                  style: TextStyle(
                    color: ColorsApp.textColors,
                    fontSize: 75.0,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("assets/fmImage.png"),
                fit: BoxFit.fill,
              )),
            ),
          ),
          Center(
            child: Column(
              children: [
                IconButton(
                  color: ColorsApp.actionColors,
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite_rounded,
                    size: 40.0,
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  "Uma Radio Campus",
                  style: TextStyle(
                    fontSize: 30.5,
                    color: ColorsApp.textColors,
                  ),
                ),

                Text(
                  "Description radio",
                  style: TextStyle(
                    fontSize: 20.5,
                    color: ColorsApp.substileColors,
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                FmListScroolWidget(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.arrow_drop_up_rounded,
                        size: 60.0, color: ColorsApp.actionColors),
                  ],
                )
                //
              ],
            ),
          ),
        ],
      ),
      persistentFooterButtons: [
        PersisBottomBarWidget(),
      ],
    );
  }
}
