import 'package:flutter/material.dart';
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
        title: Text('Vacances Rome [exemple]'),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Container(   
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SouvenirHeader(),
              MasoneryGrid()
            ],
          ),
        ),
      )
    );
  }
}
