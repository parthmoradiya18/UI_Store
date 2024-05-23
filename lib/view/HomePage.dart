

import 'package:flutter/material.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 4  ), () {
      Navigator.pushReplacementNamed(context, 'main');
    });
    return SafeArea(child: Scaffold(
      body:
      Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
              width: 200,
              child: ClipRRect(borderRadius: BorderRadius.circular(30),
                  child: Image.asset('assets/images/download.png')),
            ),
            SizedBox(height: 50,),
            Text('APP Store',style: TextStyle(fontSize: 25),)
          ],
        ),
      ),
    ));
  }
}
