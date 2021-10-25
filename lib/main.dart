import 'package:flutter/material.dart';
import 'package:Rhythmix/style/appColors.dart';
import 'package:Rhythmix/ui/homePage.dart';

main() async {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "DMSans",
        accentColor: accent,
        primaryColor: accent,
        canvasColor: Colors.transparent,
      ),
      home: Rhythmix(),
    ),
  );
}
