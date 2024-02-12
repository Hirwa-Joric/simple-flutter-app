import 'package:flutter/material.dart';
import 'package:myapp/pages/choose_location.dart';
import 'package:myapp/pages/loding.dart';
import 'package:myapp/pages/home.dart';
void main() => runApp(MaterialApp(
  initialRoute: "/home",
  routes: {
    "/": (context) => Loading(),
    "/home" : (context) => Home(),
    "/location" : (context) => ChooseLocation()
  },
));