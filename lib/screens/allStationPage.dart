import 'package:flutter/material.dart';
import 'package:uma_radio_campus/screens/stationViewPage.dart';
import 'package:uma_radio_campus/utils/route.dart';
import 'package:uma_radio_campus/widgets/stationViewCard.dart';

class AllStationPage extends StatefulWidget {
  @override
  _AllStationPageState createState() => _AllStationPageState();
}

class _AllStationPageState extends State<AllStationPage> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          StationViewCard(
            isSelected: false,
            isFavorite: true,
            onduImage: "asImage",
            stationFreq: "101.1",
            stationName: "FM Garoua",
            onPressed: ()=>pushNewPage(StationViewPage(), context),
          ),
          StationViewCard(
            isSelected: false,
            isFavorite: true,
            onduImage: "bsImage",
            stationFreq: "98.1",
            stationName: "Radion Sahel",
             onPressed: ()=>pushNewPage(StationViewPage(), context),
          ),
          StationViewCard(
            isSelected: false,
            isFavorite: true,
            onduImage: "bsImage",
            stationFreq: "110.0",
            stationName: "Uma Radio Campus",
             onPressed: ()=>pushNewPage(StationViewPage(), context),
          ),
          StationViewCard(
            isSelected: false,
            isFavorite: false,
            onduImage: "bsImage",
            stationFreq: "11.1",
            stationName: "Uma Radio Campus",
             onPressed: ()=>pushNewPage(StationViewPage(), context),
          ),
          StationViewCard(
            isSelected: false,
            isFavorite: true,
            onduImage: "bsImage",
            stationFreq: "85.1",
            stationName: "Uma Radio Campus",
             onPressed: ()=>pushNewPage(StationViewPage(), context),
          ),
          StationViewCard(
            isSelected: true,
            isFavorite: false,
            onduImage: "bsImage",
            stationFreq: "91.1",
            stationName: "Uma Radio Campus",
             onPressed: ()=>pushNewPage(StationViewPage(), context),
             onDoubleTap: (){
               print("Select thise Statiation");
             },
          ),
          StationViewCard(
            isSelected: false,
            isFavorite: true,
            onduImage: "bsImage",
            stationFreq: "101.1",
            stationName: "FM Garoua",
            onPressed: () => pushNewPage(StationViewPage(), context),
          ),
          StationViewCard(
            isSelected: false,
            isFavorite: true,
            onduImage: "bsImage",
            stationFreq: "98.1",
            stationName: "Uma Radio Campus",
            onPressed: () => pushNewPage(StationViewPage(), context),
          ),
          StationViewCard(
            isSelected: false,
            isFavorite: true,
            onduImage: "asImage",
            stationFreq: "101.1",
            stationName: "FM Garoua",
            onPressed: () => pushNewPage(StationViewPage(), context),
          ),
          StationViewCard(
            isSelected: false,
            isFavorite: true,
            onduImage: "bsImage",
            stationFreq: "101.1",
            stationName: "Sali Emmanuel FM",
            onPressed: () => pushNewPage(StationViewPage(), context),
          ),
          StationViewCard(
            isSelected: false,
            isFavorite: true,
            onduImage: "bsImage",
            stationFreq: "101.1",
            stationName: "FM Garoua",
            onPressed: () => pushNewPage(StationViewPage(), context),
          ),
          StationViewCard(
            isSelected: false,
            isFavorite: true,
            onduImage: "bsImage",
            stationFreq: "101.1",
            stationName: "Radio  Sahel",
            onPressed: () => pushNewPage(StationViewPage(), context),
          ),
          StationViewCard(
            isSelected: false,
            isFavorite: true,
            onduImage: "asImage",
            stationFreq: "101.1",
            stationName: "FM Garoua",
            onPressed: ()=>pushNewPage(StationViewPage(), context),
          ),
          StationViewCard(
            isSelected: false,
            isFavorite: true,
            onduImage: "bsImage",
            stationFreq: "98.1",
            stationName: "Radion Sahel",
             onPressed: ()=>pushNewPage(StationViewPage(), context),
          ),
          StationViewCard(
            isSelected: false,
            isFavorite: true,
            onduImage: "bsImage",
            stationFreq: "110.0",
            stationName: "Uma Radio Campus",
             onPressed: ()=>pushNewPage(StationViewPage(), context),
          ),
          StationViewCard(
            isSelected: false,
            isFavorite: false,
            onduImage: "bsImage",
            stationFreq: "11.1",
            stationName: "Uma Radio Campus",
             onPressed: ()=>pushNewPage(StationViewPage(), context),
          ),
          StationViewCard(
            isSelected: false,
            isFavorite: true,
            onduImage: "bsImage",
            stationFreq: "85.1",
            stationName: "Uma Radio Campus",
             onPressed: ()=>pushNewPage(StationViewPage(), context),
          ),
          StationViewCard(
            isSelected: false,
            isFavorite: false,
            onduImage: "bsImage",
            stationFreq: "91.1",
            stationName: "Uma Radio Campus",
             onPressed: ()=>pushNewPage(StationViewPage(), context),
             onDoubleTap: (){
               print("Select thise Statiation");
             },
          ),
        ]);
  }
}
