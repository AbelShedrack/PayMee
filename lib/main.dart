import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';

import 'menu.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pages = [
      PageViewModel(
        pageBackground: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              stops: [0.0, 1.0],
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
              tileMode: TileMode.repeated,
              colors: [
                Colors.cyanAccent,
                Colors.teal,
              ],
            ),
          ),
        ),
        body: const Text(
          "PayMee the stress free payment solution in africa",
          style: TextStyle(
            fontSize: 19.0,
          ),
        ),
        titleTextStyle: const TextStyle(
          color: Colors.white,
        ),
        bodyTextStyle: const TextStyle(
          color: Colors.white,
        ),
        mainImage: Image.asset(
          "Asset/B2.png",
          height: 285.0,
          width: 285.0,
          alignment: Alignment.center,
        ),
      ),
      PageViewModel(
        pageBackground: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              stops: [0.0, 1.0],
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
              tileMode: TileMode.repeated,
              colors: [
                Colors.cyanAccent,
                Colors.teal,
              ],
            ),
          ),
        ),
        body: const Text(
          "PayMee works very well with top banks in the country",
          style: TextStyle(
            fontSize: 19.0,
          ),
        ),
        titleTextStyle: const TextStyle(
          color: Colors.white,
        ),
        bodyTextStyle: const TextStyle(
          color: Colors.white,
        ),
        mainImage: Image.asset(
          "Asset/D.png",
          height: 285.0,
          width: 285.0,
          alignment: Alignment.center,
        ),
      ),
      PageViewModel(
        pageBackground: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              stops: [0.0, 1.0],
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
              tileMode: TileMode.repeated,
              colors: [
                Colors.cyanAccent,
                Colors.teal,
              ],
            ),
          ),
        ),
        body: const Text(
          "PayMee is bringing cashless payment to nigeria",
          style: TextStyle(
            fontSize: 19.0,
          ),
        ),
        titleTextStyle: const TextStyle(
          color: Colors.white,
        ),
        bodyTextStyle: const TextStyle(
          color: Colors.white,
        ),
        mainImage: Image.asset(
          "Asset/C.png",
          height: 285.0,
          width: 285.0,
          alignment: Alignment.center,
        ),
      ),
    ];
    return GetMaterialApp(
      title: "PayMee",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: GoogleFonts.poppins().fontFamily,
        primarySwatch: Colors.teal,
      ),
      home: Builder(
        builder: (
          _,
        ) =>
            IntroViewsFlutter(
          pages,
          showNextButton: true,
          showBackButton: true,
          onTapDoneButton: () => Get.to(MenuPage()),
          pageButtonTextStyles: const TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }
}
