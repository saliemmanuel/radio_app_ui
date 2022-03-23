import 'package:flutter/material.dart';
import 'package:uma_radio_campus/utils/colorsApp.dart';

class FmListScroolWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/capFmImage.png"),
        fit: BoxFit.fill,
      )),
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 108,
        itemBuilder: (_, i) {
          return Container(
            child: Row(
              children: [
                SizedBox(
                  width: 5,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        width: 5,
                        height: 65,
                        decoration: BoxDecoration(
                          color: ColorsApp.actionColors,
                          borderRadius: BorderRadius.circular(12.5),
                        )),
                    Text(
                      "${i + 87}.0",
                      style: TextStyle(
                        color: ColorsApp.textColors,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                    height: 55,
                    width: 5,
                    decoration: BoxDecoration(
                      color: ColorsApp.substileColors,
                      borderRadius: BorderRadius.circular(12.5),
                    )),
                SizedBox(
                  width: 5,
                ),
                Container(
                    height: 55,
                    width: 5,
                    decoration: BoxDecoration(
                      color: ColorsApp.substileColors,
                      borderRadius: BorderRadius.circular(12.5),
                    )),
                SizedBox(
                  width: 5,
                ),
                Container(
                    height: 55,
                    width: 5,
                    decoration: BoxDecoration(
                      color: ColorsApp.substileColors,
                      borderRadius: BorderRadius.circular(12.5),
                    )),
                SizedBox(
                  width: 5,
                ),
                Container(
                    height: 55,
                    width: 5,
                    decoration: BoxDecoration(
                      color: ColorsApp.substileColors,
                      borderRadius: BorderRadius.circular(12.5),
                    ))
              ],
            ),
          );
        },
      ),
    );
  }
}
