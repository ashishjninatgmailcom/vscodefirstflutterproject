// @dart=2.9
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:vscodefirstflutterproject/bg_image.dart';
import 'package:vscodefirstflutterproject/change_name_card.dart';
import 'package:vscodefirstflutterproject/drawer.dart';
import 'package:vscodefirstflutterproject/pages/home_page.dart';
import 'package:vscodefirstflutterproject/pages/login_page.dart';

void main() {
  runApp(MaterialApp(
    title: "Aashi App",
    home: LoginPage(),
    theme: ThemeData(primarySwatch: Colors.purple),
    routes: {
      "/login": (context) => LoginPage(),
      "/home": (context) => HomePage()
    },
  ));
}
