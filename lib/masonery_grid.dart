import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:transparent_image/transparent_image.dart';

class MasoneryGrid extends StatefulWidget {
  @override
  _MasoneryGridState createState() => _MasoneryGridState();
}

class _MasoneryGridState extends State<MasoneryGrid> {
  List<String> imageList = [
    "https://source.unsplash.com/random/?Rome/1",
    "https://source.unsplash.com/random/?Rome/2",
    "https://source.unsplash.com/random/?Rome/3",
    "https://source.unsplash.com/random/?Rome/4",
    "https://source.unsplash.com/random/?Rome/5",
    "https://source.unsplash.com/random/?Rome/6",
    "https://source.unsplash.com/random/?Rome/7",
    "https://source.unsplash.com/random/?Rome/8",
    "https://source.unsplash.com/random/?Rome/9",
    "https://source.unsplash.com/random/?Rome/10",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row( 
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: <Widget>[
                  Icon(Icons.location_on, color: Colors.red, size: 35),
                  Text(
                    "Rome, Italie",
                    style: TextStyle(
                      fontSize: 17,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "13 Octobre 2020",
                style: TextStyle(
                  fontSize: 15,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.normal
                ),
              ),
            ),
          ],
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: StaggeredGridView.countBuilder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                itemCount: imageList.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey[350],
                            offset: Offset(1.0, 2.0),
                            blurRadius: 1.0,
                            spreadRadius: 1.0
                          ),
                        ]
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      child: FadeInImage.memoryNetwork(placeholder: kTransparentImage, image: imageList[index], fit: BoxFit.cover,),
                    ),
                  );
                },
                staggeredTileBuilder: (index) {
                  return StaggeredTile.count(1, index.isEven ? 1.2 : 1.8);
                }
            ),
          ),
        ],
      )
    );
  }
}
