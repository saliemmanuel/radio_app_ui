import 'package:flutter/material.dart';
import 'package:uma_radio_campus/screens/homeStationPage.dart';
import 'package:uma_radio_campus/utils/colorsApp.dart';
import 'package:uma_radio_campus/utils/languageFile.dart';

class NewStationPage extends StatefulWidget {
  @override
  _NewStationPageState createState() => _NewStationPageState();
}

class _NewStationPageState extends State<NewStationPage> {
  TextEditingController nameStationController;
  TextEditingController descriptionStationController;
  TextEditingController freqController;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: 25.0),
        custCard(
            label: francaisOuAnglais ? LanguageFiles.nameStationTextFr : LanguageFiles.nameStationTextEn,
            hintText: francaisOuAnglais ? LanguageFiles.nameStationTextFr:LanguageFiles.nameStationTextEn,
            controller: nameStationController),
        SizedBox(height: 15.0),
        custCard(
            label: francaisOuAnglais ? LanguageFiles.descriptionTextFr : LanguageFiles.descriptionTextEn,
            hintText: francaisOuAnglais ? LanguageFiles.descriptionTextFr : LanguageFiles.descriptionTextEn,
            controller: descriptionStationController),
        SizedBox(height: 15.0),
        custCard(
            label: francaisOuAnglais ? LanguageFiles.freqTextFr : LanguageFiles.freqTextEn,
            hintText: francaisOuAnglais ? LanguageFiles.freqTextFr : LanguageFiles.freqTextEn,
            controller: freqController),
        SizedBox(height: 15.0),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                child: MaterialButton(
                  child: Text(francaisOuAnglais ? LanguageFiles.addTextFr :  LanguageFiles.addTextEn, style: TextStyle(color: ColorsApp.textColors),),
                  color: ColorsApp.actionColors,
                  onPressed: () {},
                ),
              ),
              SizedBox(width: 15.0),
              Expanded(
                child: MaterialButton(
                  child: Text(francaisOuAnglais ? LanguageFiles.cancelTextFr : LanguageFiles.cancelTextEn,style: TextStyle(color: ColorsApp.textColors),),
                  color: ColorsApp.substileColors,
                  onPressed: () {},
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget custCard(
      {String label, String hintText, TextEditingController controller}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            label,
            style: TextStyle(
              color: ColorsApp.textColors,
              fontSize: 20.0,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: ColorsApp.actionColors)),
            child: TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                fillColor: ColorsApp.textColors,
                  border: InputBorder.none,
                  hintText: hintText,
                  hintStyle: TextStyle(
                    color: ColorsApp.substileColors,
                  )),
              controller: controller,
            ),
          ),
        ),
      ],
    );
  }
}
