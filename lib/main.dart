
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_store/State/Provider.dart';
import 'package:ui_store/view/HomePage.dart';
import 'package:ui_store/view/Home_main_Page.dart';


void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Provider_(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context)=> Home_Page(),
          'main':(context) => Home_main_Page(),
        },
      ),
    ),
  );
}
