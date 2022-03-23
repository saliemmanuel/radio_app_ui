import 'package:flutter/material.dart';
import 'package:uma_radio_campus/utils/colorsApp.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("À-propos"),
      ),
      body: Container(
        color: ColorsApp.primaryColors,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  children: <Widget>[
                    Card(
                      color: ColorsApp.substileColors,
                      child: ListTile(
                        leading: Icon(
                          Icons.info,
                          color: ColorsApp.textColors,
                        ),
                        title: Text("FS - Université Maroua ",
                            style: TextStyle(color: ColorsApp.textColors)),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Card(
                      color: ColorsApp.substileColors,
                      child: ListTile(
                        leading: Icon(
                          Icons.person,
                          color: ColorsApp.textColors,
                        ),
                        title: Text("Auteur",
                            style: TextStyle(color: ColorsApp.textColors)),
                        subtitle: Text("Sali Emmanuel",
                            style: TextStyle(color: ColorsApp.textColors)),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Card(
                      color: ColorsApp.substileColors,
                      child: ListTile(
                        leading: Icon(
                          Icons.contacts,
                          color: ColorsApp.textColors,
                        ),
                        title: Text("Contacts ",
                            style: TextStyle(color: ColorsApp.textColors)),
                        subtitle: Text(
                            "Téléphone : +237 698066896\nFacebook : Sali Emmanuel Johnson\nInstagram : @_dotDev\nTelegram @dotDev\nGit : https://github.com/saliemmanuel ",
                            style: TextStyle(color: ColorsApp.textColors)),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: ColorsApp.substileColors,
                  child: ListTile(
                    title: Text("Uma Radio Campus App  v1.0.0 Copyright 2021 ",
                        style: TextStyle(color: ColorsApp.textColors)),
                    leading: Icon(
                      Icons.info,
                      color: ColorsApp.textColors,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
