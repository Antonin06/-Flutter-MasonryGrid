import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:memolidays_souvenir/masonery_grid.dart';
import 'package:memolidays_souvenir/souvenir_header.dart';

class SouvenirPage extends StatefulWidget {
  @override
  _SouvenirPageState createState() => _SouvenirPageState();
}

class _SouvenirPageState extends State<SouvenirPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Vacances Rome'),
          centerTitle: true,
          actions: <Widget>[
            PopupMenuButton(
                itemBuilder: (context) => [
                      PopupMenuItem(
                        child: GestureDetector(
                            onTap: () {
                              Get.toNamed("/details");
                            },
                            child: Text("InduceSmile.com")
                        ),
                      ),
                    ])
          ],
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[SouvenirHeader(), MasoneryGrid()],
            ),
          ),
        ));
  }
}
