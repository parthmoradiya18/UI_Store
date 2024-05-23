
import 'package:flutter/material.dart';
import 'package:ui_store/Model/Model.dart';


class Provider_ extends ChangeNotifier {

  List<Model> name = [
    Model(Name: "Recommended for you"),
    Model(Name: "New & updated apps"),
    Model(Name: "Suggested for you"),
    Model(Name: "Editor's Choice apps"),
  ];
  List<Model> Game_Data = [
    Model(
        photo: "assets/image/csgo.jpg",
        appname: "Csgo Mobile",
        star: "Pre-Order",
        link:
        'https://play.google.com/store/apps/details?id=com.axlebolt.standoff2'),
     Model(
        photo: "assets/images/bgmi.jpg",
        appname: "BGMI",
        star: "4.1",
        link:
        'https://play.google.com/store/apps/details?id=com.pubg.imobile&hl=en_IN&gl=US'),
    Model(
        photo: "assets/images/mk.png",
        appname: "MK Mobile",
        star: "4.3",
        link: 'https://play.google.com/store/apps/details?id=com.wb.goog.mkx'),
    Model(
        photo: "assets/image/fifa.png",
        appname: "Fifa Mobile",
        star: "4.2",
        link:
        'https://play.google.com/store/apps/details?id=com.ea.gp.fifamobile'),

    Model(
        photo: "assets/image/cc.png",
        appname: "Candy Crush",
        star: "4.3",
        link:
        'https://play.google.com/store/apps/details?id=com.king.candycrushsaga'),
    Model(
        photo: "assets/image/au.png",
        appname: "Among Us",
        star: "4.1",
        link:
        'https://play.google.com/store/apps/details?id=com.innersloth.spacemafia'),
   Model(
        photo: "assets/image/rc.png",
        appname: "Rc 2022",
        star: "4.3",
        link:
        'https://play.google.com/store/apps/details?id=com.nautilus.realcricket'),
    Model(
        photo: "assets/image/ss.png",
        appname: "Subway Surfers",
        star: "4.3",
        link:
        'https://play.google.com/store/apps/details?id=com.kiloo.subwaysurf'),

  ];
  List<Model> game = [

    Model(
        photo: "assets/images/csgo.jpg",
        appname: "Csgo Mobile",
        star: "Pre-Order",
        Name: 'Activision.co'),
      Model(
        photo: "assets/images/bgmi.jpg",
        appname: "BGMI",
        star: "4.1",
        Name: 'Activision.co'),
    Model(
        photo: "assets/images/mk.png",
        appname: "MK Mobile",
        star: "4.3",
        Name: 'Activision.co'),
    Model(
        photo: "assets/images/fifa.png",
        appname: "Fifa Mobile",
        star: "4.2",
        Name: 'Activision.co'),
    Model(
        photo: "assets/images/cc.png",
        appname: "Candy Crush",
        star: "4.3",
        Name: 'Activision.co'),

    Model(
        photo: "assets/images/au.png",
        appname: "Among Us",
        star: "4.1",
        Name: 'Activision.co'),
    Model(
        photo: "assets/images/rc.png",
        appname: "Rc 2022",
        star: "4.3",
        Name: 'Activision.co'),
    Model(
        photo: "assets/images/ss.png",
        appname: "Subway Surfers",
        star: "4.3",
        Name: 'Activision.co'),
  ];

  List<Model> My_app_choice = [
    Model(
      photo: "assets/images/amazon.png", appname: "Amazon", star: "4.2",),
    Model(
        photo: "assets/images/digilocker.png",
        appname: "DigiLocker",
        star: "4.1"),
    Model(
        photo: "assets/images/netflix.png", appname: "Netflix", star: "4.3"),
    Model(
        photo: "assets/images/snapseed.png", appname: "Snapseed", star: "4.3"),
    Model(
        photo: "assets/images/angleone.png", appname: "Angel One", star: "4.2"),
    Model(
        photo: "assets/images/dominos.png",
        appname: "Domino's Pizza",
        star: "4.1"),
    Model(
        photo: "assets/images/groww.png", appname: "Groww: socks", star: "4.3"),
    Model(
        photo: "assets/images/octafx.png",
        appname: "OctaFX Trading",
        star: "4.3"),
    Model(
        photo: "assets/images/bookmyshow.png",
        appname: "BookMyShow",
        star: "4.2"),
    Model(
        photo: "assets/images/hotstar.png",
        appname: "Disnep Hotstar",
        star: "4.1"),
    Model(
        photo: "assets/images/lighroom.png",
        appname: "Lightroom CC",
        star: "4.3"),
    Model(
        photo: "assets/images/primevideo.png",
        appname: "Amazon Prime Video",
        star: "4.3"),
     ];

  List<Model> custom_data = [
    Model(
        photo: "assets/images/facebook.png", appname: "Facebook", star: "4.2",link: 'https://play.google.com/store/apps/details?id=com.facebook.katana'),
    Model(
        photo: "assets/images/Instagram.png", appname: "Instagram", star: "4.1",link: 'https://play.google.com/store/apps/details?id=com.instagram.android'),
    Model(
        photo: "assets/images/snapchat.png", appname: "Snapchat", star: "4.3",link: 'https://play.google.com/store/apps/details?id=com.snapchat.android'),
    Model(
        photo: "assets/images/twitter.png", appname: "Twitter", star: "4.3",link: 'https://play.google.com/store/apps/details?id=com.twitter.android'),
  ];

  List<Model> Url = [

    Model(
      photo:
      "https://play.google.com/store/apps/details?id=com.facebook.katana",
    ),
    Model(
      photo:
      "https://play.google.com/store/apps/details?id=com.instagram.android",
    ),
    Model(
      photo:
      "https://play.google.com/store/apps/details?id=com.snapchat.android",
    ),
    Model(
      photo:
      "https://play.google.com/store/apps/details?id=com.twitter.android",
    ),
  ];
}
