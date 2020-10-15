import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:transparent_image/transparent_image.dart';

class DetailsPhoto extends StatelessWidget {
  List<ImageDetails> _images = [
    ImageDetails(
        imagePath: "https://source.unsplash.com/VFRTXGw1VjU",
        title: "Toto",
        date: "14 Octobre 2020",
        location: "Roanne",
        comment: "Super Week-end à Rome!"),
    ImageDetails(
        imagePath: "https://source.unsplash.com/7ybKmhDTcz0",
        title: "Toto",
        date: "14 Octobre 2020",
        location: "Roanne",
        comment: "Super Week-end à Rome!"),
    ImageDetails(
        imagePath: "https://source.unsplash.com/S0hS0HfH_B8",
        title: "Toto",
        date: "14 Octobre 2020",
        location: "Roanne",
        comment: "Super Week-end à Rome!"),
    ImageDetails(
        imagePath: "https://source.unsplash.com/8CGT0Kq6K3k",
        title: "Toto",
        date: "14 Octobre 2020",
        location: "Roanne",
        comment: "Super Week-end à Rome!"),
    ImageDetails(
        imagePath: "https://source.unsplash.com/BchXuilibLA",
        title: "Toto",
        date: "14 Octobre 2020",
        location: "Roanne",
        comment: "Super Week-end à Rome!"),
    ImageDetails(
        imagePath: "https://source.unsplash.com/2N-kwvSeU5U",
        title: "Toto",
        date: "14 Octobre 2020",
        location: "Roanne",
        comment: "Super Week-end à Rome!"),
    ImageDetails(
        imagePath: "https://source.unsplash.com/tHXX4fl3-ms",
        title: "Toto",
        date: "14 Octobre 2020",
        location: "Roanne",
        comment: "Super Week-end à Rome!"),
    ImageDetails(
        imagePath: "https://source.unsplash.com/cjBLfrjE-XU",
        title: "Toto",
        date: "14 Octobre 2020",
        location: "Roanne",
        comment: "Super Week-end à Rome!"),
    ImageDetails(
        imagePath: "https://source.unsplash.com/RH0QUHYPeW4",
        title: "Toto",
        date: "14 Octobre 2020",
        location: "Roanne",
        comment: "Super Week-end à Rome!"),
    ImageDetails(
        imagePath: "https://source.unsplash.com/kaEhf0eZme8",
        title: "Toto",
        date: "14 Octobre 2020",
        location: "Roanne",
        comment: "Super Week-end à Rome!"),
  ];
  final String imagePath;
  final String title;
  final String date;
  final String location;
  final String comment;
  final int index;
  DetailsPhoto(
      {this.imagePath,
      this.title,
      this.date,
      this.location,
      this.comment,
      this.index});

  PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Colors.black,
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.white,
              onPressed: () {
                Get.back();
              })),
      body: PageView.builder(
          controller: pageController,
          pageSnapping: true,
          itemCount: _images.length,
          itemBuilder: (context, int index) {
            return Container(
              child: Center(
                child: FadeInImage.memoryNetwork(
                  placeholder: kTransparentImage,
                  image: _images[index].imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            );
          }),
    );
  }
}

class ImageDetails {
  final String imagePath;
  final String title;
  final String date;
  final String location;
  final String comment;
  ImageDetails(
      {this.imagePath, this.title, this.date, this.location, this.comment});
}
