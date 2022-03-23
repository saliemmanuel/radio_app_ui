import 'package:flutter/material.dart';
import 'package:uma_radio_campus/utils/colorsApp.dart';

class PersisBottomBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
              icon: Icon(
                Icons.skip_previous_rounded,
                color: ColorsApp.substileColors,
              ),
              iconSize: 40.0,
              onPressed: () {}),
          SizedBox(width: 15.0),
          IconButton(
              icon: Icon(
                Icons.play_arrow_rounded,
                color: ColorsApp.actionColors,
              ),
              iconSize: 45.0,
              onPressed: () {}),
          SizedBox(width: 15.0),
          IconButton(
              icon: Icon(
                Icons.skip_next_rounded,
                color: ColorsApp.substileColors,
              ),
              iconSize: 40.0,
              onPressed: () {}),
        ],
      ),
    );
  }
}
