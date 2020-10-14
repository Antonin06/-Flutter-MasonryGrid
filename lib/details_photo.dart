import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

class DetailsPhoto extends StatelessWidget {
  final String imagePath;
  final String title;
  final String date;
  final String location;
  final String comment;
  final int index;
  DetailsPhoto(
    {
    this.imagePath,
    this.title,
    this.date,
    this.location,
    this.comment,
    this.index
    }
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$title'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    imagePath,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          // color: Colors.red,
                          borderRadius: BorderRadius.circular(10)),
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Center(
                            child: Text(
                              title,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Center(
                            child: Text(
                              comment,
                              style: TextStyle(
                                fontSize: 15,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: [
                                  Icon(Icons.location_on,
                                      color: Colors.red, size: 35),
                                  Text(
                                    location,
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontStyle: FontStyle.italic,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Text(
                                date,
                                style: TextStyle(
                                  fontSize: 15,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.facebook,
                              size: 30,
                              color: HexColor("#0674E7"),
                            ),
                            onPressed: () {}),
                        IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.instagram,
                              size: 30,
                              color: HexColor("#C13584"),
                            ),
                            onPressed: () {}),
                        IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.twitter,
                              size: 30,
                              color: HexColor("#1da1f2"),
                            ),
                            onPressed: () {}),
                        IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.userCircle,
                              size: 30,
                              color: Colors.orange,
                            ),
                            onPressed: () {}),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
