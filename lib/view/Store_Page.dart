import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:ui_store/State/Provider.dart';
import 'package:url_launcher/url_launcher.dart';

class Store_Page extends StatefulWidget {
  const Store_Page({Key? key}) : super(key: key);

  @override
  State<Store_Page> createState() => _Store_PageState();
}

class _Store_PageState extends State<Store_Page> {
  Provider_? imageproviderT;
  Provider_? imageProviderF;
  @override
  Widget build(BuildContext context) {
    imageproviderT = Provider.of<Provider_>(context, listen: true);
    imageProviderF = Provider.of<Provider_>(context, listen: false);
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 20,
        ),

        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Apps For You",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Icon(Icons.arrow_forward),
            ],
          ),
        ),

        SizedBox(
          height: 150,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: imageProviderF!.name.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: ()async{
                        await launchUrl(Uri.parse('${imageProviderF!.custom_data[index].link}'));
                      },
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: ClipRRect(borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                              imageProviderF!.custom_data[index].photo as String),
                        ),
                      ),
                    ),
                    //SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.only(top: 3),
                      child: Container(
                          width: 100,
                          child: Text(
                              "${imageProviderF!.custom_data[index].appname}")),
                    ),
                    Row(
                      children: [
                        Text(
                          "${imageProviderF!.custom_data[index].star.toString()}",
                          style: TextStyle(color: Color(0xff8f8d8d)),
                        ),
                        SizedBox(width: 5,),
                        Text('★'),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
