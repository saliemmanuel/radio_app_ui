import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:uma_radio_campus/utils/colorsApp.dart';

class StationViewCard extends StatelessWidget {
  final bool isSelected;
  final bool isFavorite;
  final String onduImage;
  final String stationFreq;
  final String stationName;
  final Function onPressed;
  final Function onDoubleTap;
  const StationViewCard(
      {Key key,
      this.isSelected,
      this.isFavorite,
      this.onduImage,
      this.stationFreq,
      this.stationName,
      this.onPressed,
      this.onDoubleTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 10.0,
        decoration: isSelected
            ? BoxDecoration(
                color: ColorsApp.actionColors,
                borderRadius: BorderRadius.circular(12.5),
              )
            : BoxDecoration(
                color: ColorsApp.primaryColors,
                borderRadius: BorderRadius.circular(12.5),
                border: Border.all(color: ColorsApp.substileColors),
              ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ListTile(
              title: Text(
                stationFreq,
                style: TextStyle(
                  fontSize: 30.5,
                  color: ColorsApp.textColors,
                ),
              ),
              subtitle: Text(
                stationName,
                style: TextStyle(
                  color: ColorsApp.substileColors,
                ),
              ),
              trailing: IconButton(
                icon: isFavorite
                    ? Icon(Icons.favorite_rounded)
                    : Icon(Icons.favorite_border_outlined),
                color:
                    isSelected ? ColorsApp.textColors : ColorsApp.actionColors,
                onPressed: () {print("Like");},
              ),
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 2.5),
                child: Image.asset(
                  "assets/$onduImage.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ),
      onTap: onPressed,
      onDoubleTap: onDoubleTap,
    );
  }
}
