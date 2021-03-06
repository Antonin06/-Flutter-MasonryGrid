import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:memolidays_souvenir/settings.dart';
import 'package:memolidays_souvenir/souvenir_page.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Colors.white,
        canvasColor: Colors.transparent,
      ),
      debugShowCheckedModeBanner: false,
      home: SouvenirPage(),
      getPages: [GetPage(name: '/details', page: () => Settings())],
    );
  }
}
