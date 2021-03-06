import 'dart:ui';
import 'package:flutter/material.dart';

class SouvenirHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Stack(
        alignment: Alignment.bottomLeft, 
        children: <Widget>[
        Container(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              "https://source.unsplash.com/VFRTXGw1VjU/400x200",
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "VACANCES ROME AVEC LES ENFANTS",
            maxLines: 4,
            style: TextStyle(
              fontSize: 35,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w900,
              color: Colors.white,
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(2, 2),
                  blurRadius: 10.0,
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ),
        ]
      ),
    );
  }
}